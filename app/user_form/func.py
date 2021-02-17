import pandas as pd
from app.models import City, Region


# Метод Загрузки xlsx на сайт а так же метод преобразования таблицы для соединенных таблиц relationships
def replace_id_loc1(basedir1, filename, engine):
    df = pd.read_excel(basedir1 + '\\' + filename, engine='openpyxl')
    # df.drop(df.columns[], axis=1, inplace=True)
    with engine.begin() as connection:
        df1 = pd.DataFrame(df)
        df1.phone.astype(str)
        i = 0
        while i < len(df1):
            rel_city = City.query.filter(City.name == df1.loc[i, 'city_id']).first()
            try:
                df1.loc[i, 'city_id'] = rel_city.id
                df1.loc[i, 'region_id'] = rel_city.region_id
            except:
                df1.loc[i, 'city_id'] = ''
                df1.loc[i, 'region_id'] = ''
            i += 1

        df1.to_sql('users', con=connection, if_exists='append', index=False)


# Метод Выгрузки xlsx на сайт а так же метод преобразования таблицы для соединенных таблиц relationships
def replace_id_loc2(basedir2, filename, engine):
    df = pd.read_excel(basedir2 + filename, engine='openpyxl')
    df.drop(df.columns[[0]], axis=1, inplace=True)
    with engine.begin():
        df12 = pd.DataFrame(df)
        df1 = df12.fillna(0)
        df12.phone.astype(str)
        for i in range(0, len(df12)):

            if df1.loc[i, 'city_id'] > 0.0:
                a = df1.city_id.astype(int)[i]
                rel_city = City.query.filter(City.id == int(a)).first()
                df12.loc[i, 'city_id'] = rel_city.name

            if df1.loc[i, 'region_id'] > 0.0:
                b = df1.region_id.astype(int)[i]
                rel_reg = Region.query.filter(Region.id == int(b)).first()
                df12.loc[i, 'region_id'] = rel_reg.name_region

    writer = pd.ExcelWriter(basedir2 + r'\database.xlsx')
    df.to_excel(writer, sheet_name='0', index=False)
    writer.save()

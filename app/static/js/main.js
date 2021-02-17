function get_city() {

$.ajax({
        type: "POST",
        url: "http://localhost:5000/table/",
        cache: false,
        data: $('select').serialize(),
        success: function(response) {
            var json = jQuery.parseJSON(JSON.stringify(response))

            var arr = json.city
            b = document.getElementById("city_a");
            $(".city_input").remove();
            arr.forEach(e => b.innerHTML += "<option class='city_input'>" + e + "</option>");


        },

        error: function(error) {
            console.log(error);
        }
    });
}

//
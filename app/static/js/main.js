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

            console.log(arr);
        },

        error: function(error) {
            console.log(error);
        }
    });
}

//
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("В поле телефон вводите только цифры");
        return false;
    }

    return true;
}

function ValidateNo() {
    var phoneNo = document.getElementById('phone');

    if (phoneNo.value == "" || phoneNo.value == null) {
            alert("Введите номер телефона");
            return false;
        }
        if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
            alert("Телефон не валиден проверте ввод");
            return false;
        }

        alert("Success ");
        return true;
 }
//
//
//function validateEmail() {
//
//    var email = document.getElementById('email');
//    var mailFormat = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
//
//    if (email.value == "") {
//        alert("Пожалуйста, введите свой адрес электронной почты");
//    }
//    else if (!mailFormat.test(email.value)) {
//        alert("Не валидный адрес проверте ввод");
//        return false;
//    }
//    else {
//        alert(" Success ");
//    }
//
//}
//
// Example starter JavaScript for disabling form submissions if there are invalid fields

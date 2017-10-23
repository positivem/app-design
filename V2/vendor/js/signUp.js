$(document).ready(function () {

    var animating = false,
        submitPhase2 = 400,
        logoutPhase1 = 800,
        $login = $(".login"),
        $app = $(".app");

    function ripple(elem, e) {
        $(".ripple").remove();
        var elTop = elem.offset().top,
            elLeft = elem.offset().left,
            x = e.pageX - elLeft,
            y = e.pageY - elTop;
        var $ripple = $("<div class='ripple'></div>");
        $ripple.css({ top: y, left: x });
        elem.append($ripple);
    };

    $(document).on("click", ".signUp__submit", function (e) {

       //Login Process
        var inptFirstName = $("#inptFirstName");
        var inptLastName = $("#inptLastName");
        var iptUserName =  $("#iptUserName");
        var iptPassword = $("#iptPassword");

        if (inptFirstName.val() == "") {
            alert("First Name is Required");
            return;
        }

        if (inptLastName.val() == "") {
            alert("Last Name is Required");
            return;
        }

        if (iptUserName.val() == "") {
            alert("User Name is Required");
            return;
        }

        if (iptPassword.val() == "") {
            alert("Password is Required");
            return;
        }

        if (animating) return;
        animating = true;
        var that = this;
        ripple($(that), e);
        $(that).addClass("processing");
        setTimeout(function () {
            $(that).addClass("success");

            window.location.href = "/Index.html";
        }, 1100);
       
    });

});
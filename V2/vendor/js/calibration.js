function GotoNextStep(step) {
    $('.step' + (step - 1)).addClass('displayNone');
    $('.step' + (step - 1)).hide();
    $('.step' + step).show();

    if (step == 3) {
        setTimeout(function () {
            GotoNextStep(4);
        }, 2000);
    }
}
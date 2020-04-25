function init() {
    var checkboxes = document.getElementsByTagName('input');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', toggleColor, false);
    }
}

function toggleColor() {
    var device = this.value;
    switch (device) {
        case 'stress': {
        var stress = document.querySelectorAll('.stress');
        for (var i = 0; i < stress.length; i++) {
            stress[i].classList.toggle('on');
        };
        };
        break;
        case 'unstress': {
        var unstress = document.querySelectorAll('.unstress');
        for (var i = 0; i < unstress.length; i++) {
            unstress[i].classList.toggle('on');
        };
        };
        break;
        case 'work': {
        var work = document.querySelectorAll('.work');
        for (var i = 0; i < work.length; i++) {
            work[i].classList.toggle('on');
            
        };
        };
        break;
        case 'environment': {
        var environment = document.querySelectorAll('.environment');
        for (var i = 0; i < environment.length; i++) {
            environment[i].classList.toggle('on');
        };
        };
        break;
        case 'career': {
        var career = document.querySelectorAll('.career');
        for (var i = 0; i < career.length; i++) {
            career[i].classList.toggle('on');
        };
        };
        break;
        case 'money': {
        var money = document.querySelectorAll('.money');
        for (var i = 0; i < money.length; i++) {
            money[i].classList.toggle('on');
        };
        };
        break;
        case 'family': {
        var family = document.querySelectorAll('.family');
        for (var i = 0; i < family.length; i++) {
            family[i].classList.toggle('on');
        };
        };
        break;
        case 'friendship': {
        var friendship = document.querySelectorAll('.friendship');
        for (var i = 0; i < money.length; i++) {
            friendship[i].classList.toggle('on');
        };
        };
        break;
        case 'love': {
        var money = document.querySelectorAll('.love');
        for (var i = 0; i < money.length; i++) {
            love[i].classList.toggle('on');
        };
        };
        break;
    }
}

window.onload = init;
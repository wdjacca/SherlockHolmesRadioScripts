// JavaScript Document
var divs = document.getElementsByElement('span');

var toggle = function() {    
    for (var i = 0, l = divs.length; i < l; i++) {
        if (divs[i].getAttribute('class') == 'announcer') 
            if (divs[i].style.display == 'none') divs[i].style.display = '';
            else divs[i].style.display = 'none';
    }
}

document.getElementById('Toggle').onclick = toggle;
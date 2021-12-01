// JavaScript Document
window.addEventListener('DOMContentLoaded',nontoggle,false);
window.addEventListener('DOMContentLoaded',mention,false);
window.addEventListener('DOMContentLoaded',toggle,false);

function nontoggle() {
document.getElementById('nonToggle').addEventListener('click', nonToggle, false)  
    
}

var nonToggle = function() {  
    var spans = document.getElementsByClassName('nonstory');
    for (var i = 0; i < spans.length; i++) {
     spans[i].parentNode.classList.toggle("off")
       
    } 
}


function mention() {
document.getElementById('mentionToggle').addEventListener('click', mentionToggle, false)  
    
}

var mentionToggle = function() {  
    var spans = document.getElementsByClassName('mention');
    for (var i = 0; i < spans.length; i++) {
     spans[i].classList.toggle("on")
       
    } 
}

function toggle() {
document.getElementById('nonToggle').addEventListener('click', Toggle, false)  
    
}

var Toggle = function() {  
    var spans = document.querySelectorAll('.stageDirect, .music, .sound');
    for (var i = 0; i < spans.length; i++) {
     spans[i].classList.toggle("off")
       
    } 
}

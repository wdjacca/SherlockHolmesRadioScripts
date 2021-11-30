// JavaScript Document
window.addEventListener('DOMContentLoaded',announ,false);
window.addEventListener('DOMContentLoaded',SD,false);
window.addEventListener('DOMContentLoaded',music,false);
window.addEventListener('DOMContentLoaded',sound,false);

function announ() {
document.getElementById('announToggle').addEventListener('click', announToggle, false)  
    
}

var announToggle = function() {  
    var spans = document.getElementsByClassName('announcer');
    for (var i = 0; i < spans.length; i++) {
     console.log('divs at position i is now: ' + spans[i] + "i is: " + i)
     spans[i].parentNode.classList.toggle("off")
       
    } 
}

function SD() {
document.getElementById('stageToggle').addEventListener('click', SDtoggle, false)  
    
}

var SDtoggle = function() {  
    var spans = document.getElementsByClassName('stageDirect');
    for (var i = 0; i < spans.length; i++) {
     console.log('divs at position i is now: ' + spans[i] + "i is: " + i)
     spans[i].classList.toggle("off")
       
    } 
}

function music() {
document.getElementById('musicToggle').addEventListener('click', musicToggle, false)  
    
}

var musicToggle = function() {  
    var spans = document.getElementsByClassName('music');
    for (var i = 0; i < spans.length; i++) {
     console.log('divs at position i is now: ' + spans[i] + "i is: " + i)
     spans[i].classList.toggle("off")
       
    } 
}

function sound() {
document.getElementById('soundToggle').addEventListener('click', soundToggle, false)  
    
}

var soundToggle = function() {  
    var spans = document.getElementsByClassName('sound');
    for (var i = 0; i < spans.length; i++) {
     console.log('divs at position i is now: ' + spans[i] + "i is: " + i)
     spans[i].classList.toggle("off")
       
    } 
}


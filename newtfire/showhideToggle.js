// JavaScript Document
window.addEventListener('DOMContentLoaded',pageLoadUp,false);

function pageLoadUp() {
document.getElementById('toggle').addEventListener('click', toggle, false)  
    
}

var toggle = function() {  
    var spans = document.getElementsByClassName('announcer');
    for (var i = 0; i < spans.length; i++) {
     console.log('divs at position i is now: ' + spans[i] + "i is: " + i)
     spans[i].parentNode.classList.toggle("off")
       
    } 
}

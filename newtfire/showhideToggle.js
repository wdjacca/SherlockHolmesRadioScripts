// JavaScript Document
window.addEventListener('DOMContentLoaded',radiotoggle,false);
window.addEventListener('DOMContentLoaded',mention,false);
window.addEventListener('DOMContentLoaded',stagetoggle,false);
/*window.addEventListener('DOMContentLoaded',sigChange,false);
window.addEventListener('DOMContentLoaded',interpel,false);*/


function radiotoggle() {
document.getElementById('radioToggle').addEventListener('click', announToggle, false)  
    
}

var announToggle = function() {
// Toggling radio elements
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

function stagetoggle() {
document.getElementById('radioToggle').addEventListener('click', stageToggle, false)  
    
}

var stageToggle = function() {  
    var spans = document.querySelectorAll('.stageDirect, .music, .sound');
    for (var i = 0; i < spans.length; i++) {
     spans[i].classList.toggle("off")
       
    } 
}

/*

function sigChange() {
document.getElementById('sigToggle').addEventListener('click', sigToggle, false)  
    
}

var sigToggle = function() {  
    var spans = document.getElementsByClassName('sig');
    for (var i = 0; i < spans.length; i++) {
     spans[i].classList.toggle("on")
       
    } 
}


function interpel() {
document.getElementById('interpelToggle').addEventListener('click', interpelToggle, false)  
    
}

var interpelToggle = function() {  
    var spans = document.getElementsByClassName('interpel');
    for (var i = 0; i < spans.length; i++) {
     spans[i].classList.toggle("on")
       
    } 
}*/
/*
function change(){
    document.getElementById ('changeToggle').addEventListener ('click', changeToggle, false)
}
var changeInfo = document.get ('change')
var changeToggle = function(){
    for (var i = 0; i < lineips.length; i++) {
/\* Show the lineInfoGloss associated with "this".  *\/
    var change = changeInfo[i].getElementsByClassName('').split(' ');
    console.log('Spiltting attributes! = ' + changeInfo)
    if (changeInfo.includes('interpel')) {
    console.log ('Interpel detected')
     changeInfo[i].classList.toggle("on");
     if (changeInfo.includes('sig')) {
    console.log ('Sig Change detected')
     changeInfo[i].classList.toggle("on");
                    }
                }
            }         
        } */
    
$(document).ready(function() {
var slider = document.getElementById("myRange");
var amounts = document.getElementById("amounts");
var minutes = document.getElementById("minutes");

amounts.innerHTML = slider.value;
minutes.innerHTML = slider.value;

slider.oninput = function() {
	var minute = this.value*2;
  	minutes.innerHTML = minute
  	amounts.innerHTML = minute*2;

}

});
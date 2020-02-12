var time = new Date();
console.log(time.getHours() % 12);
console.log(time.getMinutes());
console.log(time.getSeconds());

var clock = document.getElementById('clockText');

function timeClock(){
	var time = new Date();
	var hours = time.getHours();
	var minutes = time.getMinutes();
	var seconds = time.getSeconds();
	var amPm = (hours < 12) ? "AM" : "PM";
	hours = (hours % 12);
	if (hours % 12 == 0)
		hours = 12;

	hours = ("0" + hours).slice(-2);
	minutes = ("0" + minutes).slice(-2);
	seconds = ("0" + seconds).slice(-2);

	var clockString = hours + ' : '+minutes+' : '+seconds+ ' '+amPm;
	clockText.textContent= clockString;
//	document.getElementById("clockTime").value=new Date();
}
timeClock();
setInterval(timeClock, 1000);

//function doOnClick(){
//	if(document.getElementById('clockBtn').value=="Punch IN")
//		{
//			document.getElementById('clockBtn').value="Punch OUT"
//			return false;
//		}
//
//	else { 
//		document.getElementById('clockBtn').value="Punch IN"
//			return false;
//	}
//		
//	
//}
$(document).ready(function(){
	$(document).on('click','.new-script-button',function()
	{
		// window.location.href='script/index.html#/';
		// window.location.href='script/index.html';
		// localStorage.setItem('userInformation', '<?php echo $_SESSION['email'];?>'); 
		// console.log(localStorage.getItem('userInformation'));
		window.open('script/');
	});
})
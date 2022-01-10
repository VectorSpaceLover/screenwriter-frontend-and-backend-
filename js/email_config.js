$(document).ready(function(){
	$(document).on('click','.new-coupon-button',function()
	{
		window.location.href='new_coupon.php';

	});

	$('#reset_email').click(function()
	{
		window.location.href='email_config.php';
	});

	//send email
	$(document).on('click','.edit_email',function()
	{
		localStorage.setemailid=$(this).attr('id');
		window.location.href='edit_email.php';
	});

	//view email
	$(document).on('click','.view_email',function()
	{
		localStorage.setemailid=$(this).attr('id');

		window.location.href='view_email.php';
	});

	$('#send_email_form').submit(function(e){

		//send email

			$.ajax({
				type: "POST",
				url:"callbacks/mails.php",
				data:$('#send_email_form').serialize(),
				success:function(data)
				{
					if(data==1)
					{

						swal({
							title: "Mail Saved Successfully",
							text: "",
							type: "success"
						}).then(function() {
							window.location = "email_config.php";
						});
					}
					else
					{
						swal({
							title: "Fail to Mail",
							text: "",
							type: "danger"
						}).then(function() {
							window.location = "edit_email.php";
						});

					}

				}


			});

			e.preventDefault();
		});

	//delete email
	$(document).on('click','.del_mail',function()
	{
		var dataString="function="+"del_mail"+"&id="+$(this).attr('id');
		bootbox.confirm("Are you sure want to delete this mail ?", function(result){
			{
				if(result)
				{
					$.ajax({
						type: "POST",
						url:"callbacks/mails.php",
						data:dataString,
						success:function(data)
						{
							if(data==1)
							{

								swal({
									title: "Mail Deleted Successfully",
									text: "",
									type: "success"
								}).then(function() {
									window.location = "view_email.php";
								});

							}
							else
							{
								swal({
									title: "Fail to Delete!",
									text: "",
									type: "danger"
								}).then(function() {
									window.location = "view_email.php";
								});
							}

						}
					});
				}
			}
		});

	});

})
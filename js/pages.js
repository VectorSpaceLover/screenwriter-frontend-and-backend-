$(document).ready(function(){
	$(document).on('click','.new-page-button',function()
	{
		window.location.href='new_page.php';

	});

	$('#reset_page').click(function()
	{
		window.location.href='pages.php';
	});

	//edit coupon
	$(document).on('click','.edit_page',function()
	{
		localStorage.setpageid=$(this).attr('id');

		window.location.href='edit_page.php';
	});
	//delete page
	$(document).on('click','.del_page',function()
	{
		var dataString="function="+"del_page"+"&id="+$(this).attr('id');
		bootbox.confirm("Are you sure want to delete this page ?", function(result){
			{
				if(result)
				{
					$.ajax({
						type: "POST",
						url:"callbacks/pages.php",
						data:dataString,
						success:function(data)
						{
							if(data==1)
							{

								swal({
									title: "Page Deleted Successfully",
									text: "",
									type: "success"
								}).then(function() {
									window.location = "pages.php";
								});

							}
							else
							{
								swal({
									title: "Fail to Page!",
									text: "",
									type: "danger"
								}).then(function() {
									window.location = "pages.php";
								});
							}

						}
					});
				}
			}
		});

	});

	$('#new_page_form').submit(function(e){
			$.ajax({
				type: "POST",
				url:"callbacks/pages.php",
				data:$('#new_page_form').serialize(),
				success:function(data)
				{
					if(data==1)
					{

						swal({
							title: "Page Saved Successfully",
							text: "",
							type: "success"
						}).then(function() {
							window.location = "pages.php";
						});
					}
					else
					{
						swal({
							title: "Fail to Page",
							text: "",
							type: "danger"
						}).then(function() {
							window.location = "new_page.php";
						});

					}

				}


			});

			e.preventDefault();
		});

	$('#update_page_form').submit(function(e){
		$('#page_id').val(localStorage.setpageid);
		
		$.ajax({
			type: "POST",
			url:"callbacks/pages.php",
			data:$('#update_page_form').serialize(),
			success:function(data)
			{
				if(data==1)
				{

					swal({
						title: "Page Updated Successfully",
						text: "",
						type: "success"
					}).then(function() {
						window.location = "pages.php";
					});
				}
				else
				{
					swal({
						title: "Fail to Update",
						text: "",
						type: "danger"
					}).then(function() {
						window.location = "edit_page.php";
					});

				}

			}


		});

		e.preventDefault();
	});

})
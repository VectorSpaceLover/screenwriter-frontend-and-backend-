$(document).ready(function(){
	$(document).on('click','.new-coupon-button',function()
	{
		window.location.href='new_coupon.php';

	});

	$('#reset_coupon').click(function()
	{
		window.location.href='coupons.php';
	});

	$('#exit_edit_coupon').click(function(){
		window.location.href = 'coupons.php';
	})
	//edit coupon
	$(document).on('click','.edit_coupon',function()
	{
		localStorage.setcouponid=$(this).attr('id');

		window.location.href='edit_coupon.php';
	});
	//delete coupon
	$(document).on('click','.del_coupon',function()
	{

		var dataString="function="+"deletecoupon"+"&id="+$(this).attr('id');
		bootbox.confirm("Are you sure want to delete this coupon ?", function(result){
			{
				if(result)
				{
					$.ajax({
						type: "POST",
						url:"callbacks/coupons.php",
						data:dataString,
						success:function(data)
						{
							if(data==1)
							{

								swal({
									title: "Coupon Deleted Successfully",
									text: "",
									type: "success"
								}).then(function() {
									window.location = "coupons.php";
								});

							}
							else
							{
								swal({
									title: "Fail to Delete!",
									text: "",
									type: "danger"
								}).then(function() {
									window.location = "coupons.php";
								});
							}

						}
					});
				}
			}
		});

	});

	$('#new_coupon_form').submit(function(e){
			$.ajax({
				type: "POST",
				url:"callbacks/coupons.php",
				data:$('#new_coupon_form').serialize(),
				success:function(data)
				{
					if(data==1)
					{

						swal({
							title: "Coupon Created Successfully",
							text: "",
							type: "success"
						}).then(function() {
							window.location = "coupons.php";
						});
					}
					else
					{
						swal({
							title: "Fail to Coupon",
							text: "",
							type: "danger"
						}).then(function() {
							window.location = "new_coupon.php";
						});

					}

				}


			});

			e.preventDefault();
		});

	$('#update_coupon_form').submit(function(e){

		$('#couponid').val(localStorage.setcouponid);
		
		$.ajax({
			type: "POST",
			url:"callbacks/coupons.php",
			data:$('#update_coupon_form').serialize(),
			success:function(data)
			{
				if(data==1)
				{

					swal({
						title: "User Updated Successfully",
						text: "",
						type: "success"
					}).then(function() {
						window.location = "coupons.php";
					});
				}
				else
				{
					swal({
						title: "Fail to Update",
						text: "",
						type: "danger"
					}).then(function() {
						window.location = "edit_coupon.php";
					});

				}

			}


		});

		e.preventDefault();
	});

})
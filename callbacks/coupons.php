<?php
  session_start();
  include_once 'config.php';
  include_once 'functions.php';

if(isset($_POST['function']) && $_POST['function']== 'new_coupon')
{
	$code = $_POST['code-name'];
  $price = $_POST['price'];
  $discount_percentage = $_POST['discount_percentage'];
	$discount_price = $_POST['discount_price'];
	$prevQuery = "select * from coupons where code = '".$code."'";
    $prevResult = $con->query($prevQuery);

    if($prevResult->num_rows > 0){
        // Update member data in the database
        $query = "update coupons set code = '".$code."', price = '".$price."' , discount_percentage = '".$discount_percentage."' , discount_price = '".$discount_price."' where code = '".$code."'";
    }else{
        // Insert member data in the database
        $query = "insert into coupons (code, price, discount_percentage, discount_price) values ('".$code."', '".$price."', '".$discount_percentage."', '".$discount_price."')";
    }

    if ($con->query($query))
    {
    	echo 1;
    }
    else
    {
    	echo 0;
    }
    $prevResult->free_result();
}

if(isset($_POST['function']) && $_POST['function']== 'update_coupon')
{
	$couponid = $_POST['couponid'];
	$code = $_POST['code-name'];
	$price = $_POST['price'];
  $discount_percentage = $_POST['discount_percentage'];
  $discount_price = $_POST['discount_price'];

	$prevQuery = "select * from coupons where id = '".$couponid."'";
    $prevResult = $con->query($prevQuery);
    if($prevResult->num_rows > 0){
        // Update member data in the database
        $query = "update coupons set code = '".$code."', price = '".$price."' , discount_percentage = '".$discount_percentage."' , discount_price = '".$discount_price."' where id = '".$couponid."'";
    }

    if ($con->query($query))
    {
    	echo 1;
    }
    else
    {
    	echo 0;
    }
    $prevResult->free_result();
}

if ($_POST['function'] && $_POST['function'] == 'editcoupondata') 
{
	$couponid = $_POST['couponid'];
	$query = "select * from coupons where id = ".$couponid;
	$result = $con->query($query);
	header('Content-Type: application/json');
	if($result->num_rows > 0)
	{
		$row = mysqli_fetch_assoc($result);
		echo json_encode($row);
	}
	else
	{
      	echo 0;
	}
}

if(isset($_POST['function']) && $_POST['function']== 'deletecoupon')
{

  $id=$_POST['id'];

  if(mysqli_query($con ,"delete from coupons where id=".$id))
  {

    echo '1';
    die();
  }
  else
  {
    echo '0';
    die();
  }

}

?>

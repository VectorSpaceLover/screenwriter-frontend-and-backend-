<?php
  session_start();
  include_once 'config.php';
  include_once 'functions.php';

if(isset($_POST['function']) && $_POST['function']== 'sendemail')
{

	$subject = $_POST['email_subject'];
	$body = $_POST['email_body'];
    $id = $_POST['email_id'];

	$query = "insert into mails (userid, email_subject, email_body) values ('".$id."', '".$subject."', '".$body."')";
    if ($con->query($query))
    {
    	echo 1;
    }
    else
    {
    	echo 0;
    }
}

if(isset($_POST['function']) && $_POST['function'] == 'getEmails') {

  $html = '';
  $mailid = $_POST['mailid'];
  $user_query = "select * from mails where userid = '".$mailid."'";
  $user_result = mysqli_query($con,$user_query);

  if(mysqli_num_rows($user_result) > 0) {
    $html.= '<tr>';
    $index = 0;
    while($row = mysqli_fetch_assoc($user_result)) {
      $index++;
      $html.='<td>'.$index.'</td>';
      $html.='<td>'.$row['email_subject'].'</td>';
      $html.='<td>'.$row['email_body'].'</td>';
      $html.='<td><div style="display:flex"><button class="btn btn-primary del_mail" id="'.$row['id'].'"><i class="fa fa-trash"></i></button>';
      $html.= '</tr>';

    }

    echo $html;

    die();

  }
  else
  {
    echo 0;
    die();
  }
}


if(isset($_POST['function']) && $_POST['function']== 'del_mail')
{

  $id=$_POST['id'];

  if(mysqli_query($con ,"delete from mails where id=".$id))
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
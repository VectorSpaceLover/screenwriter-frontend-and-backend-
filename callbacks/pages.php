<?php
  session_start();
  include_once 'config.php';
  include_once 'functions.php';

if(isset($_POST['function']) && $_POST['function']== 'newpage')
{

	$title = $_POST['page_title'];
	$content = $_POST['page_content'];
  $id = $_POST['page_id'];
	$query = "insert into pages (page_title, page_content) values ('".$title."', '".$content."')";

  if ($con->query($query))
  {
    echo 1;
  }
  else
  {
    echo 0;
  }
}

if(isset($_POST['function']) && $_POST['function']== 'del_page')
{

  $id=$_POST['id'];

  if(mysqli_query($con ,"delete from pages where id=".$id))
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

if(isset($_POST['function']) && $_POST['function']== 'update_page')
{
  $pageid = $_POST['page_id'];
  $pagetitle = $_POST['page_title'];
  $pagecontent = $_POST['page_content'];
  $prevQuery = "select * from pages where id = '".$pageid."'";

  $prevResult = $con->query($prevQuery);
  if($prevResult->num_rows > 0){
      // Update member data in the database
     $query = "update pages set page_title = '".$pagetitle."', page_content = '".$pagecontent."' where id = ".$pageid;
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

if (isset($_POST['function']) && $_POST['function'] == 'editpage') 
{
  $pageid = $_POST['pageid'];
  $query = "select * from pages where id = ".$pageid;
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
if(isset($_GET['function']) && $_GET['function'] == 'getPageContent'){
  
  $res = ['success' => false, 'data' => [], 'error' => ''];

  header('Content-Type: application/json');

  if(isset($_GET['pageId'])){
    $id = $_GET['pageId'];
    $result = $con->query("SELECT * from pages where id = " . $id ."");
    if($result && $result->num_rows > 0){
      $res['data'] = mysqli_fetch_assoc($result);
      $res['success'] = true;
    }      
    else 
      $res['error'] = 'query error';
  }else{
    $res['error'] = 'invalid page number';
  }
  echo json_encode($res);
}

?>
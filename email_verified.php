<!DOCTYPE html>
<html lang = 'en'>
    <head>
    
    <?php
        include 'callbacks/config.php';
        include 'header.php';
        include 'scripts.php';
    ?>
    </head>
    <body>
        <div class = 'container'>
            <div class = 'row'>
                <div class = 'col-md-6'>
                <?php    
                if(isset($_REQUEST['email']) && isset($_REQUEST['code'])){
                    $email = $_REQUEST['email'];
                    $code = $_REQUEST['code'];
                    // echo $email . "<br>" . $code;
                    $sql = "SELECT * from users WHERE email='" . $email . "'";
                    // echo $sql . '<br>';
                    $result = $con->query($sql);
                    if($result)
                        if($result->num_rows > 0){
                            $row = $result->fetch_assoc();
                            if($row['verification_code'] == $code){
                                $sql = "update users set email_verify = 1 where id = '".$row['id']."'";
                                // echo $sql;
                                if(mysqli_query($con, $sql)){                                
                            ?>
                                <h3>The email that you provided is already verified.</h3>
                                
                                <h5>Please let me know if you have any questions or would like further information, otherwise, no response is needed.</h5>
                                
                                <h5>You may now login to your account <a href="index.php">here</a></h5>
                                
                                <h5>Thank You!,</h5>
                            <?php
                                } else {
                                    echo "<h3>User account approve failed.</h3>";
                                }
                            } else {
                                echo "<h3>verfy code incorrect.<h3>";
                            }
                        } else {
                            echo "<h3>verfication failed.</h3>";
                        }
                }
                ?>
                </div>
            </div>
        </div>
    
    </body>
</html>


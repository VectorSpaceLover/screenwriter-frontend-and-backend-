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
    <h4 id = 'result'></h4>
    <script>
        
        $(document).ready(function(){
            var verifyData = {email: '1633431504655@mail.ru', code: 'Mzg='};
            $.ajax({
                type: 'GET',
                url: 'email_verified.php',
                data: verifyData,
                success: function(res){
                    $('#result').html(res);
                }
            })
        })
    </script>
    </body>
</html>


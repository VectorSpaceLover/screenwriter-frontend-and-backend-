<!DOCTYPE html>
<html lang = 'en'>

<?php
include_once('header.php');
include_once('scripts.php')
?>
<div id = 'result' style = 'color: black'></div>
    <script>
        function generateEmail(){
            return (new Date().getTime()) + "@mail.ru";
        }
        var formData = {
            'function': 'signup',
            'val-email': generateEmail(),
            'val-password': 'abc',
            'val-confirm-password': 'abc',
            'val-firstname': 'vassili',
            'val-lastname': 'zaitsev',
            'val-address1': 'dd',
            'val-address2': 'ff',
            'val-city': 'newyork',
            'val-state': 'state',
            'val-zip': 'zip',
            'val-phoneus': '+7(3519)33-26-11'
        };
        
        $(document).ready(function(){
            $.ajax({
                type: "POST",
                url: "callbacks/scripts.php",
                data: formData,
                success: function (data) {
                    console.log(data);
                    var result = isJSON(data) ? JSON.parse(data) : data;
                    console.log(result.msg);
                    if( result.msg == 'success') {
                        // window.location.href='payment.php';
                    } else {
                        // swal(result.msg, "", "error")
                    }
                    swal(result.description, "", "error");
                }
            });
        });        
    </script>
</html>
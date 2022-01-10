<script type="text/javascript">
    localStorage.removeItem('userInformation');
    localStorage.clear();
    console.log("localStorage cla");

    // $.ajax(
    //     type:'GET',
    //     url:'/delete_session.php',
    //     success: functio(status){
    //         status == turue

    //     }
    //     )
    window.location.href = 'index.php';

    <?php
    session_start();
    session_destroy();
    //header('Location: ./index.php');
    ?>
</script>

<?php include 'session.php'; ?>
<!DOCTYPE html>
<html lang="en">

<?php include_once('header.php'); ?>

<body>

  <?php include_once('preloader.php'); ?>


  <!--**********************************
  Main wrapper start
  ***********************************-->
  <div id="main-wrapper">


    <?php

    include_once('nav_header.php');
    include_once('page_header.php');
    include_once('left_navigation.php');

    ?>


    <!--**********************************
    Content body start
    ***********************************-->
    <div class="content-body">
      <!-- row -->
      <div class="container-fluid">
        <div class="row">


          <div class="col-lg-12">

            <div class="card">
              <div class="card-title">
                <h4 class="pt-3 ml-3">Edit Email</h4>

              </div>
              <div class="card-body">
                <form class="form-horizontal"  method='post' id='send_email_form'>
                  <input type='hidden' id='email_id' name='email_id' value=''>
                  <input type='hidden' id='function' name='function' value='sendemail'>
                 
                  <div class="form-group">
                    <label class="control-label col-sm-2" >Email Subject</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="email_subject"  name="email_subject" required>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="control-label col-sm-2" >Email Body</label>
                    <div class="col-sm-10">
                      <textarea class="form-control" style = "height: 300px;" id="email_body" name="email_body" required></textarea>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-primary" id="send_email"><i class='fa fa-save'></i> Send</button>
                      <button type="button" class="btn btn-danger" id='reset_email'><i class='fa fa-remove'></i> Cancel</button>
                    </div>
                  </div>
                </form>
              </div>

            </div>
          </div>

        </div>



      </div>
    </div>
    <!--**********************************
    Content body end
    ***********************************-->


    <?php include_once('footer.php'); ?>

    <!--**********************************
    Support ticket button start
    ***********************************-->

    <!--**********************************
    Support ticket button end
    ***********************************-->


  </div>
  <!--**********************************
  Main wrapper end
  ***********************************-->

  <?php  include_once('scripts.php'); ?>

  <script type="text/javascript" src="js/email_config.js"></script>

  <script>

  $(document).ready(function() {
    $('#email_id').val(localStorage.setemailid);
  });
  </script>
</body>

</html>

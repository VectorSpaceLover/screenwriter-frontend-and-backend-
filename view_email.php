<?php
include 'session.php';
?>
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
                <h4 class="pt-3 ml-3">Email Config</h4>

              </div>
              <div class="card-body">



                <!-- Display status message -->
                <?php if(!empty($statusMsg)){ ?>
                  <div class="col-xs-12">
                    <div class="alert <?php echo $statusType; ?>"><?php echo $statusMsg; ?></div>
                  </div>
                <?php } ?>

                <!-- Data list table -->
                <div class="table-responsive">
                  <table class='table table-bordered table-hover table-striped' id='mail_table'>
                    <thead>
                      <tr>
                        <th>ID</th><th>Email Subject</th><th>Email Body</th><th>Action</th>
                      </tr>
                    </thead>
                    <tbody class="mail_table_body">
                    </tbody>
                  </table>
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
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/email_config.js"></script>
  </body>

 <script>
  $(document).ready(function() {
     $.ajax({
      type: "POST",
      url: "callbacks/mails.php",
      data: {'mailid':localStorage.setemailid, 'function':'getEmails'},
      success: function (data) {
        if(data != 0)
        {
          var result = isJSON(data) ? JSON.parse(data) : data;
          $('.mail_table_body').html(result);
          $('#mail_table').DataTable();
        }
      }
    });
  });
  </script>
  </html>

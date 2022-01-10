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
                <h4 class="pt-3 ml-3">New Coupon</h4>

              </div>
              <div class="card-body">


                <form class="form-horizontal"  method='post' id='new_coupon_form'>
                  <input type='hidden' id='function' name='function' value='new_coupon'>

                  <div class="form-group">
                    <label class="control-label col-sm-2" >Code</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="code-name"  name="code-name" required>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="control-label col-sm-2" >Price </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="price"  name="price" required>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="control-label col-sm-2" >Discount Percentage </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="discount_percentage"  name="discount_percentage" required>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="control-label col-sm-2" >Discount Price </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="discount_price"  name="discount_price" required>
                    </div>
                  </div>

                 <!--  <div class="form-group">
                    <label class="control-label col-sm-2" >Status </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="status"  name="status" required>
                    </div>
                  </div> -->

                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-primary" id="new_coupon"><i class='fa fa-save'></i> Save</button>
                      <button type="button" class="btn btn-danger" id='reset_coupon'><i class='fa fa-remove'></i> Cancel</button>
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

  <script type="text/javascript" src="js/coupons.js"></script>


</body>

</html>

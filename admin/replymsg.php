<?php include 'inc/header.php'; ?>
<?php include 'inc/sidebar.php'; ?>


<?php
if (!isset($_GET['msgid']) || $_GET['msgid'] == NULL) {
   
   echo "<script>window.location='inbox.php';</script>";
   
} else {

    $id = $_GET['msgid'];
}


 ?>


        <div class="grid_10">
        
            <div class="box round first grid">
                <h2>Xem tin nhắn</h2>
<?php 
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$from =  'MIME-Version: 1.0' . "\r\n";
 $to = $fm->validation($_POST['toEmail']);
 $from = $fm->validation($_POST['fromEmail']);
 $Subject = $fm->validation($_POST['subject']);
 $message = $fm->validation($_POST['message']);

 $sendmail = mail($to, $from, $Subject, $message);

 if ($sendmail) {
     echo "<span class='success'>Gửi tin nhắn thành công!.</span>";
 }else{
    echo "<span class='error'>Lỗi xảy ra! Vui lòng thử lại!</span>";
 }


}

?>


                <div class="block">               
                 <form action="" method="post" >

             <?php

            $query = "select * from tbl_contact where id='$id'";
            $msg = $db->select($query);
            if ($msg) {

            while ($result = $msg->fetch_assoc()) {

           ?>
                    <table class="form">
                       
              

                        <tr>
                            <td>
                                <label>Tới</label>
                            </td>
                            <td>
                                <input type="text" readonly name="toEmail" value="<?php echo $result['email'];?>" class="medium" />
                            </td>
                        </tr>

                         <tr>
                            <td>
                                <label>Từ</label>
                            </td>
                            <td>
                                <input type="text" name="fromEmail" placeholder="Vui lòng nhập địa chỉ Email của bạn" class="medium" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label>Tiêu đề</label>
                            </td>
                            <td>
                                <input type="text" name="subject" placeholder="Nhập tiêu đề" class="medium" />
                            </td>
                        </tr>
                     
                    
                   
                    
                       
                    
                        <tr>
                            <td>
                                <label>Tin nhắn</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name="message">
                                    

                                </textarea>
                            </td>
                        </tr>

                       
                        

                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Gửi tin nhắn" />
                            </td>
                        </tr>
                    </table>

                    <?php } } ?>

                    </form>
                </div>
            </div>
        </div>


 <!-- Load TinyMCE -->
    <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setupTinyMCE();
            setDatePicker('date-picker');
            $('input[type="checkbox"]').fancybutton();
            $('input[type="radio"]').fancybutton();
        });
    </script>


 <!-- Load TinyMCE -->

 <?php include 'inc/footer.php'; ?>




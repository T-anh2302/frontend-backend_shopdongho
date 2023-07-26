<?php include 'inc/header.php';?>
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	$name = $fm->validation($_POST['name']);
	$email = $fm->validation($_POST['email']);
	$contact = $fm->validation($_POST['contact']);
	$message = $fm->validation($_POST['message']);
	

	$name = mysqli_real_escape_string($db->link, $name);
	$email = mysqli_real_escape_string($db->link, $email);
	$contact = mysqli_real_escape_string($db->link, $contact);
	$message = mysqli_real_escape_string($db->link, $message);

	$error = "";

	if (empty($name)) {
		$error = "Tên không được để trống !";
	} elseif (empty($email)) {
		$error = "Email không được để trống  !";
	} elseif (empty($contact)) {
		$error = "Liên hệ không được để trống !";

	} elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$error = "Đã tồn tại email !";
	} elseif (empty($message)) {
		$error = "Trường tiêu đề không để trống !";

	} else {
 $query = "INSERT INTO tbl_contact(name,email,contact,message) VALUES('$name','$email','$contact','$message')";

    $inserted_rows = $db->insert($query);

    if ($inserted_rows) {
     $msg = "Gửi tin nhắn thành công.";

    }else {
    $error = "Chưa gửi được tin nhắn!";
    }
	}

	}

	?>





 <div class="main">
    <div class="content">
    	<div class="support">
  			<div class="support_desc">
  				<h3>Hỗ trợ trực tiếp</h3>
  				<p><span>24 giờ | 7 ngày trong tuần | 365 ngày/ năm &nbsp;&nbsp; Hỗ trợ kỹ thuật trực tiếp</span></p>
  				<p> Tự hào là đơn vị cung cấp được các món hàng Đồng Hồ Hiệu, Trang Sức Cao Cấp, tới quý khách hàng.Hãy gọi ngay cho chúng tôi để nhận tư vấn, báo giá cho từng sản phẩm, bất kỳ sản phẩm nào bạn đang có nhu cầu.

Lưu ý: Hải Triều là đơn vị phân phối nhập hàng thường xuyên sẽ có giá chiết khấu cao nên có thể bạn sẽ bất ngờ khi nhận được báo giá từ chúng tôi. Đừng ngại ngần nhanh tay gọi NGAY cho chúng tôi, hotline Hà Nội: 0889.60.60.60, hotline Sài Gòn: 0888.06.06.06 )</p>
  			</div>
  				<img src="images/contact.png" alt="" />
  			<div class="clear"></div>
  		</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>Liên hệ với chúng tôi</h2>

				  <?php 
				if (isset($error)) {
					echo "<span style = 'color:red'>$error</span>";
				}

				if (isset($msg)) {
					echo "<span style = 'color:green'>$msg</span>";
				}


				?>
					    <form action="" method="post">
					    	<div>
						    	<span><label>Họ tên</label></span>
						    	<span><input type="text" name="name" value=""></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input type="text" name="email" value=""></span>
						    </div>
						    <div>
						     	<span><label>Di động</label></span>
						    	<span><input type="text" name="contact" value=""></span>
						    </div>
						    <div>
						    	<span><label>Nội dung</label></span>
						    	<span><textarea name="message"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" name="submit" value="Gửi thông tin"></span>
						  </div>
					    </form>
				  </div>
  				</div>
				<div class="col span_1_of_3">
      			<div class="company_address">
				     	<h2>Thông tin liên hệ :</h2>
						    	<p>Xuân Đỉnh</p>
						   		<p>Bắc Từ Liêm,</p>
						   		<p>Hà Nội</p>
				   		<p>Mobile:0889.60.60.60</p>
				   		<p>Phone: 0888.06.06.06</p>
				 	 	<p>Email: <span>thoahy1993@gmail.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				 </div>
			  </div>    	
    </div>
 </div>
<?php include 'inc/footer.php';?>
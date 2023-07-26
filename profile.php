<?php include 'inc/header.php';?>

<?php 
$login = Session::get("cuslogin");
if ($login == false) {
    header("Location:login.php");
}
 ?>
<style>
	
.tblone{width: 550px;margin: 0 auto;border: 2px solid #ddd;margin-bottom: 10px;}
.tblone tr td{text-align: justify;}	
</style>

 <div class="main">
    <div class="content">
    	<div class="section group">
    		<?php 
    		$id = Session::get("cmrId");
    		$getdata = $cmr->getCustomerData($id);
    		if ($getdata) {
    			while ($result = $getdata->fetch_assoc()) {
    		

    		 ?>
				<table class="tblone">
					<tr>
						<td colspan="3"><h2>Thông tin cá nhân</h2></td>
					</tr>
					<tr>
						<td width="20%">Họ tên</td>
						<td width="5%">:</td>
						<td><?php echo $result['name'];?></td>
					</tr>
					<tr>
						<td>Điện thoại</td>
						<td>:</td>
						<td><?php echo $result['phone'];?></td>
					</tr>
					<tr>
						<td>Email</td>
						<td>:</td>
						<td><?php echo $result['email'];?></td>
					</tr>
					<tr>
						<td>Địa chỉ</td>
						<td>:</td>
						<td><?php echo $result['address'];?></td>
					</tr>
					<tr>
						<td>Công ty</td>
						<td>:</td>
						<td><?php echo $result['city'];?></td>
					</tr>
					<tr>
						<td>Zip code</td>
						<td>:</td>
						<td><?php echo $result['zip'];?></td>
					</tr>
					<tr>
						<td>Công ty</td>
						<td>:</td>
						<td><?php echo $result['country'];?></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td><a href="editprofile.php">Cập nhật thông tin</a></td>
					</tr>

				</table>
			<?php }} ?>
 		</div>
 	</div>
	</div>
  <?php include 'inc/footer.php';?>
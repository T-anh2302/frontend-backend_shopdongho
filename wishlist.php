<?php include 'inc/header.php';?>


<?php 
$login = Session::get("cuslogin");
if ($login == false) {
	header("Location:login.php");
}
 ?>
<?php
if (isset($_GET['delwlistid'])) {
	$productId = $_GET['delwlistid'];
	$delwlist = $pd->delWlistData($cmrId, $productId);
}
?>

 <div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
			    	<h2>Yêu thích</h2>

						<table class="tblone">


							<tr>
								<th>STT</th>
								<th>Tên sản phẩm</th>
								<th>Giá</th>
								<th>Hình ảnh</th>
								<th>Hoạt động</th>
							</tr>
							<tr>

							<?php 
							$getPd = $pd->checkWlistData($cmrId);
							if ($getPd) {
								$i = 0;
								while ($result = $getPd->fetch_assoc()) {
								
								$i++;

							 ?>
								<td><?php echo $i;?></td>
								<td><?php echo $result['productName']; ?></td>
								<td><?php echo $result['price']; ?>VND</td>
								<td><img src="admin/<?php echo $result['image']; ?>" alt=""/></td>
								<td>
									<a href="details.php?proid=<?php echo $result['productId']; ?>">Mua ngay</a> ||

									<a href="?delwlistid=<?php echo $result['productId']; ?>">Xóa</a>
								</td>
								
							</tr>


						<?php } } ?>	
						</table>

					</div>
					<div class="shopping">
						<div class="shopleft" style="width: 100%;text-align: center;">
							<a href="index.php"> <img src="images/shop.png" alt="" /></a>
						</div>
					</div>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php include 'inc/footer.php';?>
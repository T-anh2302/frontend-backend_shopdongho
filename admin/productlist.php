<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classess/Product.php';?>
<?php include_once '../helpers/Formate.php';?>

<?php
$pd = new Product();
$fm = new Format();

?>

<?php
if (isset($_GET['delpro'])) {
	$id = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['delpro']);
	$delpro = $pd->delProById($id);
}
?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block"> 


              <?php 

                	if (isset($delpro)) {
                		echo $delpro;
                	}

                	?> 
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên sản phẩm</th>
					<th>Danh mục</th>
					<th>Thương hiệu</th>
					<th>Mô tả</th>
					<th>Giá</th>
					<th>Ảnh</th>
					<th>Loại</th>
					<th>Hoạt động</th>
				</tr>
			</thead>
			<tbody>

				<?php
				$getPd = $pd->getAllProduct();
				if ($getPd) {
					$i = 0;
					while ($result = $getPd->fetch_assoc()) {
						$i++;

				?>
				<tr class="odd gradeX">
					<td><?php echo $i;?></td>
					<td><?php echo $result['productName'] ;?></td>
					<td><?php echo $result['catName'] ;?></td>
					<td><?php echo $result['brandName'] ;?></td>
					<td><?php echo $fm->textShorten($result['body'],50) ;?></td>
					<td><?php echo $result['price'] ;?> VND</td>
					<td><img src="<?php echo $result['image'] ;?>" height="40px" width="60px" ></td>
					<td>
						<?php 
						if ($result['type'] == 0) {
							echo "Featured";
						}else
						echo "General";

						?>
							

						</td>
					<td><a href="productedit.php?proid=<?php echo $result['productId'];?>">Sửa</a> || <a onclick="return confirm('Bạn có chắc chắn xóa không!')" href="?delpro=<?php echo $result['productId'];?>">Xóa</a></td>
				</tr>

			<?php } } ?>
				
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>

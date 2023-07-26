<?php include 'inc/header.php';?>

<?php 
$login = Session::get("cuslogin");
if ($login == false) {
    header("Location:login.php");
}
 ?>

 <?php 
if (isset($_GET['orderid']) && $_GET['orderid'] == 'Order') {
 $cmrId = Session::get("cmrId");
 $insertOrder = $ct->orderProduct($cmrId);
 $delData = $ct->delCustomerCart();
 header("Location:success.php");
}
  ?>
<style>
.division{width: 50%;float: left;}
.tblone{width: 500px;margin: 0 auto;border: 2px solid #ddd;margin-bottom: 10px;}
.tblone tr td{text-align: justify;}
.tbltwo{float: right;text-align: left;width: 60%;border: 2px solid #ddd;margin-right: 14px;margin-top: 12px;}
.tbltwo tr td{text-align: justify;padding: 5px 10px;}
.ordernow{padding-bottom: 30px;}
.ordernow a{width: 200px;margin: 20px auto 0;text-align: center;padding: 5px;font-size: 30px;display: block;background: #ff0000;color: #fff;border-radius: 3px;}
</style>

 <div class="main">
    <div class="content">
    	<div class="section group">
    	<div class="division">
         
            <table class="tblone">


                            <tr>
                                <th>STT</th>
                                <th>Sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Tổng</th>
                            </tr>
                            <tr>

                            <?php 

                            $getPro = $ct->getCartProduct();
                            if ($getPro) {
                                $i = 0;
                                $sum = 0;
                                $qty = 0;
                                while ($result = $getPro->fetch_assoc()) {
                                
                                $i++;

                             ?>
                                <td><?php echo $i;?></td>
                                <td><?php echo $result['productName']; ?></td>
                                <td><?php echo $result['price']; ?> VND</td>
                                 <td><?php echo $result['quantity']; ?></td>
                                <td>
                            <?php
                        $total = $result['price'] * $result['quantity'];
                        echo $total;
                         ?> VND
                            

                                    </td>
                            </tr>
                            
                            <?php 
                            $qty = $qty + $result['quantity'];
                            $sum = $sum + $total;
                             ?>


                        <?php } } ?>    
                        </table> 
                        <table class="tbltwo">
                            <tr>
                                <td>Tổng</td>
                                <td>:</td>
                                <td><?php echo $sum; ?>VND</td>
                            </tr>
                            <tr>
                                <td>VAT</td>
                                <td>:</td>
                                <td>5%(<?php echo $vat = $sum * 0.05; ?>) VND</td>
                            </tr>
                            <tr>
                                <td>Thành tiền</td>
                                <td>:</td>
                                <td> 
                                    <?php 
                                    $vat = $sum * 0.05;
                                    $gtotal = $sum + $vat;
                                    echo $gtotal;
                                     ?>
                                VND</td>
                            </tr>

                             <tr>
                                <td>Số lượng</td>
                                <td>:</td>
                                <td><?php echo $qty; ?></td>
                            </tr>

                       </table>
                    
        </div>
        <div class="division">
            
            <?php 
            $id = Session::get("cmrId");
            $getdata = $cmr->getCustomerData($id);
            if ($getdata) {
                while ($result = $getdata->fetch_assoc()) {
            

             ?>
                <table class="tblone">
                    <tr>
                        <td colspan="3"><h2>Thông tin chi tiết</h2></td>
                    </tr>
                    <tr>
                        <td width="20%">Tên</td>
                        <td width="5%">:</td>
                        <td><?php echo $result['name'];?></td>
                    </tr>
                    <tr>
                        <td>SDT</td>
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
                        <td>Thành phố/td>
                        <td>:</td>
                        <td><?php echo $result['city'];?></td>
                    </tr>
                    <tr>
                        <td>Zipcode</td>
                        <td>:</td>
                        <td><?php echo $result['zip'];?></td>
                    </tr>
                    <tr>
                        <td>Quốc gia</td>
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

    <div class="ordernow"><a href="?orderid=Order">Đặt hàng</a></div>
	</div>
  <?php include 'inc/footer.php';?>
<?php
session_start();
$servername="localhost";
$username="root";
$password="";
$dbname="pmpkwebsite";

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){ 
    echo "failed to connection";
}

if(isset($_POST["add"])){
    $productid=$_GET["id"];
    $productimg=$_POST["hidden_img"];
    $productname=$_POST["hidden_name"];
    $productprice=$_POST["hidden_price"];
    $productquantity=$_POST["quantity"];

    $sql="INSERT INTO `cart`(`img`,`name`,`price`,`quantity`) VALUES ('$productimg','$productname','$productprice','$productquantity')";
    mysqli_query($conn,$sql);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cart</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav>
        <!-- <span>shop here</span> -->
        <div class="container-fluid row">
            
            <a href="cart.php" class="col-12 text-end text-danger h3"><P class="">Go To cart</P></a>
        </div>
    </nav>

    <main>
        <h2 class="bg-info text-center display-4">PRODUCT</h2>
        <div class="container">
            <?php
            $query="SELECT * FROM `patanjali` ORDER BY id ASC";
            $result=mysqli_query($conn,$query);

            if(mysqli_num_rows($result)>0){
                while($row=mysqli_fetch_array($result)){
                    ?>
                    <div class="product">
                        <form action="patanjali.php?action=add&id=<?php echo $row["id"]?>" method="post">   
                        <div class="product row">
                            <div class="col-lg-6 col-12 mt-2  text-center" ><img class="img-fluid" src="img/<?php echo $row["img"];?>" style="height:500px"></div>
                            <div class="col-lg-6 col-12"><p><?php echo $row["des"];?></p>
                            <h3><?php echo $row["name"];?></h3><br>
                            <div class="row">
                                <div class="col-5">
                                    <h3 class="text-secondary">Availabitity:</h3>
                                    <h3 class="text-secondary">Product Brand:</h3>
                                </div>
                                <div class="col-7">
                                    <h3 class="text-secondary"><?php echo $row["available"];?></h3>
                                    <h3 class="text-secondary"><?php echo $row["brand"];?></h3>
                                </div>
                            </div>
                            <h1><sup>price</sup><?php echo $row["price"];?><sub>(price <?php echo $row["price/gm"];?>)</sub></h1>
                            <h2>M.R.P. <strike><?php echo $row["mrp"];?></strike> (<?php echo number_format(100-($row["price"]/$row["mrp"])*100)?>% Discount)</h2><br>
                            
                            <div class="row">
                                <div class="col-2">Quantity:</div>
                                <div class="col-10"><input type="number" id="quantity" name="quantity" value="1" style="width: 50px;"><br><br></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-4 border2">
                                    <p class="text-center">cash on <p class="text-center">delivery available</p></p>
                                </div>
                                <div class="col-4 border2">
                                    <p class="text-center">7 days <p class="text-center">return policy</p></p>
                                </div>
                                <div class="col-4 border2">
                                    <p class="text-center">Free delivery</p>
                                </div>
                            </div><br>
                            

                            <input type="hidden" name="hidden_img" value="<?php echo $row["img"];?>">
                            <input type="hidden" name="hidden_desc" value="<?php echo $row["des"];?>">
                            <input type="hidden" name="hidden_name" value="<?php echo $row["name"];?>">
                            <input type="hidden" name="hidden_available" value="<?php echo $row["available"];?>">
                            <input type="hidden" name="hidden_brand" value="<?php echo $row["brand"];?>">
                            <input type="hidden" name="hidden_price" value="<?php echo $row["price"];?>">
                            <input type="hidden" name="hidden_price/gm" value="<?php echo $row["price/gm"];?>">
                            <input type="hidden" name="hidden_mrp" value="<?php echo $row["mrp"];?>">
                            <input type="submit" name="add" value="add to cart" class="w-100"></div>
                        </div>
                        </form> 
                    </div><hr>
                    
                    <?php
                }
            }
            ?>

        </div>
    </main>
</body>
</html>
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

if(isset($_GET["action"]) && $_GET["action"]=="delete"){
    $productname=$_GET["name"];
    $deletequery="DELETE FROM `cart` WHERE name='$productname'";
    mysqli_query($conn,$deletequery);
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
</head>
<body>
    <nav>
        <a href="index.htm"><span class="col-12 text-end text-danger h3">continue shopping</span></a>
        
    </nav>
      
            
        <div class="container-fluid row text-secondary bg-info">
            <div class="col-4 text-center h3">Product image</div>
            <div class="col-2 text-center h3">Product name</div>
            <div class="col-2 text-center h3">Product price</div>
            <div class="col-1 text-center h3">quantity</div>
            <div class="col-1 text-center h3">price</div>
            <div class="col-2 text-center h3">remove item</div>
        </div>
        
            <?php
            $query="SELECT * FROM `cart` ORDER BY id ASC";
            $result=mysqli_query($conn,$query);
            $total=0;
            if(mysqli_num_rows($result)>0){
                while($row=mysqli_fetch_array($result)){
                    ?>
                    <div class="container-fluid row">
                        <div class="col-4 text-center "><img class="img-fluid w-50" src="img/<?php echo $row["img"];?>"></div>
                        <div class="col-2 text-center h4 mt-5 pt-5"><?php echo $row["name"];?></div>
                        <div class="col-2 text-center h4 mt-5 pt-5"><?php echo $row["price"];?></div>
                        <div class="col-1 text-center h4 mt-5 pt-5"><?php echo $row["quantity"];?></div>
                        <div class="col-1 text-center h4 mt-5 pt-5"><?php echo number_format($row["quantity"]*$row["price"],2);?></div>
                        <div class="col-2 text-center h4 mt-5 pt-5"><a href="cart.php?action=delete&name=<?php echo $row["name"];?>"><span>remove item</span></a></div><hr>
                        <?php
                        $total = $total+($row["quantity"]*$row["price"]);
                        
                    }
                }
                ?>
                    
                    <div class="container-fluid text-end h2 text-muted">Total Bill:<?php echo number_format($total,2);?></div>
                    <div class="text-center bgcart h3"><a href="" class="fas fa-shopping-bag bg">PROCEED TO PAYMENT</a></div><br>
                
            
        </table>
    </div>

</body>

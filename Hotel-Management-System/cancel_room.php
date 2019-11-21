<?php

session_start();

require_once "config.php";

$query="select * from reservations ";
$stmt=mysqli_prepare($conn, $query);
$result=$conn->query($query);
        while($rows=$result->fetch_assoc()){
        if(($rows['username']==$_SESSION['username'])){
            $flag=$rows['paid'];
        }}
            
        $usr=$_SESSION["username"];
        
        $sql="UPDATE reservations SET paid= -1 where username='". $usr ."'";

        $stmt=mysqli_prepare($conn, $sql);

        if($conn->query($sql)==true)
        {
            if (mysqli_stmt_execute($stmt))
                {
                    echo '<script type="text/javascript">';
                    echo 'alert("Successfully cancelled booking");';
                    echo '</script>';
                    if($flag==1){
                        echo '<script type="text/javascript">';
                        echo 'alert("Your amont will be refunded in 5-7 working days");';
                        echo 'window.location.href="booking.php";';
                        echo '</script>';

                    }else
						header('location:booking.php');
                    // header("location: billing.php");
                
                }
                else{
                    echo '<script language="javascript">';
                    echo 'alert("Something went wrong!")';
                    echo 'window.location.href="booking.php";';
					echo '</script>';
                }
        }
        else{
            echo 'xcldjfhf ';
        }
        mysqli_close($conn);

?>





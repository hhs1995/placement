 <?php

session_start();
 $host="localhost";
$user="root";
$pass="root";
$con = mysql_connect("$host","$user","$pass");


if (!$con)
  {

echo "Error in DBConnect() = " . mssql_get_last_message();
  die('Could not connect: ' . mysql_error());

  }
mysql_select_db("placement", $con);
$username=$_POST['username'];
$password=$_POST['password'];

/* multilogin code */
 $mysql = "SELECT * FROM stud_login WHERE username='$username' and approval='yes'";
$mysql2 = "SELECT * FROM tpo WHERE username='$username' ";
$mysql3 = "SELECT * FROM comp_login WHERE username='$username' and approval='yes'";

$mysql4 = "SELECT * FROM stud_login WHERE username='$username'  and approval=''";
$mysql5 = "SELECT * FROM comp_login WHERE username='$username'  and approval=''";

 $result = mysql_query($mysql) or die("cannot execute query");
$result2 = mysql_query($mysql2) or die("cannot execute query");
$result3 = mysql_query($mysql3) or die("cannot execute query");
$result4 = mysql_query($mysql4) or die("cannot execute query");
$result5 = mysql_query($mysql5) or die("cannot execute query");

 $count = mysql_num_rows($result);
 $count2 = mysql_num_rows($result2);
$count3 = mysql_num_rows($result3);
 $count4 = mysql_num_rows($result4);
$count5= mysql_num_rows($result5);


		if($count==true) {
		$stud="select * from stud_login where username='$username' AND password=password('$password')";
		$res1=mysql_query($stud);
		$row1=mysql_fetch_row($res1);
		if($row1)
		{
         $_SESSION['s_id'] = $row1['sid'];
         header("location:home.php"); // student home page
        }
		else
		{
			header("location:index.php?error=0");
		}
		}
		elseif($count2==true) {
		$tpo="select * from tpo where username='$username' AND password=$password";
		$res2=mysql_query($tpo);
		$row2=mysql_fetch_row($res2);
		if($row2)
		{
		 $_SESSION['s_id'] = $row2['tid'];
	      header("location:tpo/tpohome.php");  //tpo home page
	}
else
		{
			header("location:index.php?error=1"); // student home page
		}
	}
	else if($count3==true) {
		
		$comp="select * from comp_login where username='$username' AND password=password('$password')";
		$res3=mysql_query($comp);
		$row3=mysql_fetch_row($res3);
		if($row3)
		{
		 $_SESSION['s_id'] = $row3['cid'];
	header("location:company/comphome.php");  //comp home page
	}
else
		{
			header("location:index.php?error=2"); // student home page
		}		
		
		}
		
else if($count4==true) {
		$notastud="select * from stud_login where username='$username' AND password=password('$password')";
		$res4=mysql_query($notastud);
		$row4=mysql_fetch_row($res4);
		if($row4)
		{
		 header("location:approval.php"); //if both condition not satisfied
	}
else
		{
			header("location:index.php?error=4"); // student home page
		}
	}		

else if($count5==true) {
		$notacomp="select * from comp_login where username='$username' AND password=password('$password')";
		$res5=mysql_query($notacomp);
		$row5=mysql_fetch_row($res5);
		if($row5)
		{
		  header("location:approval.php"); //if both condition not satisfied
	    }
        else
		{
			echo "incorrect pasword";
			header("location:index.php?error=5"); // student home page
		}
	}
		
		


else {

	header("location:notregister.php");
	}
/*
session_start();
$host="localhost";
$user="root";
$pass="root";
$con = mysql_connect("$host","$user","$pass");


if (!$con)
  {

echo "Error in DBConnect() = " . mssql_get_last_message();
  die('Could not connect: ' . mysql_error());

  }
mysql_select_db("placement", $con);
$username=$_POST['username'];
$password=$_POST['password'];

/* multilogin code 
 $mysql = "SELECT * FROM stud_login WHERE username='$username' and password=password('$password') and approval='yes' ";
if($mysql==true) {
			
				$myresult = mysql_query($mysql1) or die("cannot execute query");
 				$mycount = mysql_num_rows($myresult);
 				$myrow = mysql_fetch_array($myresult);
 				$_SESSION['s_id'] = $myrow['sid'];
				header("location:home.php"); 

			
	}
elseif() {
$mysql2 = "SELECT * FROM tpo WHERE username='$username' and password='$password' ";

	$_SESSION['s_id'] = $row2['tid'];
	header("location:tpo/tpohome.php");
}
//$mysql3 = "SELECT * FROM comp_login WHERE username='$username' and password=password('$password')";
//$mysql4 = "SELECT * FROM department WHERE username='$username' and password='$password'";

 $result = mysql_query($mysql) or die("cannot execute query");
 $result2 = mysql_query($mysql2) or die("cannot execute query");
 //$result3 = mysql_query($mysql3) or die("cannot execute query");
//$result4 = mysql_query($mysql4) or die("cannot execute query");

 $count = mysql_num_rows($result);
 $count2 = mysql_num_rows($result2);
 //$count3 = mysql_num_rows($result3);
 //$count4 = mysql_num_rows($result4);

$row = mysql_fetch_array($result);
$row2 = mysql_fetch_array($result2);
//$row3 = mysql_fetch_array($result3);
//$row4 = mysql_fetch_array($result4);


         //tpo home page
/*elseif($count3==1) {
     $_SESSION['s_id'] = $row3['cid'];
	header("location:company/comphome.php");  //comp home page
}
elseif($count4==1) {
     $_SESSION['s_id'] = $row4['did'];
	header("location:department/dhome.php");  //comp home page
}

else 
	header("location:notregister.php"); //if both condition not satisfied

*/
 ?>

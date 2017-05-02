 <?php
	$host  = "localhost";
	$user  = "root";
	$pass  = "";
	$dbase = "dynamulticheck";

	// Create connection
	$conn = mysqli_connect($host, $user, $pass);
	$db   = mysqli_select_db($conn,$dbase);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	// echo "Connected successfully";
?> 
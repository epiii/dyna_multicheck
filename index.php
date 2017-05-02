<form method="post">
<?php
	require 'dbcon.php';
	// combobox ----------------
	$cmb='<p>nama : <select name="id_user">';
		$s ='SELECT * from user order by nama';
		$e = mysqli_query($conn,$s);
		while($r=mysqli_fetch_assoc($e))
			$cmb.='<option value="'.$r['id_user'].'">'.$r['nama'].'</option>';
	$cmb.='</select></p>';
	echo $cmb;
	
	// chekcbox -----------------
	$s ='SELECT * from kota order by kota';
	$e = mysqli_query($conn,$s);
	$cb='<p>pilih kota : </p>';
	while($r=mysqli_fetch_assoc($e)){
		$cb.='<p>
			<label><input type="checkbox" value="'.$r['id_kota'].'" name="id_kota[]" >'.$r['kota'].'</label>
		</p>';
	}echo $cb;

	// db process ----------------
	if(isset($_POST['simpan'])){
		if(!isset($_POST['id_kota'])) echo '<script>alert(\'pilih kota\');</script>';
		else{
			foreach ($_POST['id_kota'] as $i => $v) {
				$s ='INSERT INTO orders SET 
						id_user   ='.$_POST['id_user'].',	
						id_kota   ='.$v.',
						timestamp = now()';
				// print_r($s);
				// exit();
				$e = mysqli_query($conn,$s);
			}
		} // end if 
	}
?>
	<input type="submit" name="simpan" value="ok">
</form>
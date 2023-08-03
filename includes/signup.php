<?php
error_reporting(0);
if (isset($_POST['submit'])) {
	$fname = $_POST['fname'];
	$mnumber = $_POST['mobilenumber'];
	$email = $_POST['email'];
	$password = md5($_POST['password']);
	$sql = "INSERT INTO  tblusers(FullName,MobileNumber,EmailId,Password) VALUES(:fname,:mnumber,:email,:password)";
	$query = $dbh->prepare($sql);
	$query->bindParam(':fname', $fname, PDO::PARAM_STR);
	$query->bindParam(':mnumber', $mnumber, PDO::PARAM_STR);
	$query->bindParam(':email', $email, PDO::PARAM_STR);
	$query->bindParam(':password', $password, PDO::PARAM_STR);
	$query->execute();
	$lastInsertId = $dbh->lastInsertId();
	if ($lastInsertId) {
		$_SESSION['msg'] = "You are Scuccessfully registered. Now you can login ";
		// header('location:thankyou.php');
		header('location:makasih.php');
	} else {
		$_SESSION['msg'] = "Something went wrong. Please try again.";
		header('location:thankyou.php');
	}
}
?>
<!--Javascript for check email availabilty-->
<script>
	function checkAvailability() {

		$("#loaderIcon").show();
		jQuery.ajax({
			url: "check_availability.php",
			data: 'emailid=' + $("#email").val(),
			type: "POST",
			success: function(data) {
				$("#user-availability-status").html(data);
				$("#loaderIcon").hide();
			},
			error: function() {}
		});
	}
</script>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<section>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-left">
							</div>
							<div class="login-right">
								<form name="signup" method="post">
									<h3>Daftar Akun</h3>


									<input type="text" value="" placeholder="Nama Lengkap" name="fname" autocomplete="off" required="">
									<input type="text" value="" placeholder="Nomor Telpon" maxlength="15" name="mobilenumber" autocomplete="off" required="">
									<input type="text" value="" placeholder="Email" name="email" id="email" onBlur="checkAvailability()" autocomplete="off" required="">
									<span id="user-availability-status" style="font-size:12px;"></span>
									<input type="password" value="" placeholder="Kata Sandi" name="password" required="">
									<input type="submit" name="submit" id="submit" value="Buat Akun">
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p> <a>Terms and Conditions and Privacy Policy</a></p>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
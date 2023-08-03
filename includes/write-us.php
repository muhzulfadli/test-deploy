<?php
error_reporting(0);
if (isset($_POST['submit'])) {
	$issue = $_POST['issue'];
	// $description = $_POST['description']["name"];
	$description = $_FILES['description']["name"];
	move_uploaded_file($_FILES["description"]["tmp_name"], "admin/images/" . $_FILES["description"]["name"]);
	$email = $_SESSION['login'];
	$sql = "INSERT INTO  tblissues(UserEmail,Issue,Description) VALUES(:email,:issue,:description)";
	$query = $dbh->prepare($sql);
	$query->bindParam(':issue', $issue, PDO::PARAM_STR);
	$query->bindParam(':description', $description, PDO::PARAM_STR);
	$query->bindParam(':email', $email, PDO::PARAM_STR);
	$query->execute();
	$lastInsertId = $dbh->lastInsertId();
	if ($lastInsertId) {
		$_SESSION['msg'] = "Berhasil ";
		echo "<script type='text/javascript'> document.location = 'thankyou.php'; </script>";
	} else {
		$_SESSION['msg'] = "Ada yang salah, silahkan coba lagi";
		echo "<script type='text/javascript'> document.location = 'thankyou.php'; </script>";
	}
}
?>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<section>
				<form name="help" method="post" enctype="multipart/form-data">
					<div class="modal-body modal-spa">
						<div class="writ">
							<h4>Upload Bukti Pembayaran</h4>
							<ul>
								<li class="na-me">
									<select id="country" name="issue" class="frm-field required sect" required="">
										<option value="">Bukti Pembayaran :</option>
										<option value="Pembayaran penginapan">Pembayaran penginapan</option>
										<option value="Pembayaran tiket penyebrangan"> Pembayaran tiket penyebrangan</option>
									</select>
								</li>
								<li class="descrip">
									<!-- <input class="special" type="file" placeholder="Deskripsi" name="description" required=""> -->
									<input class="special" type="file" placeholder="Deskripsi" name="description" id="description" required="">
								</li>
								<div class="clearfix"></div>
							</ul>
							<div class="sub-bn">
								<form>
									<button type="submit" name="submit" class="subbtn">Laporkan Masalah</button>
								</form>
							</div>
						</div>
					</div>
				</form>
			</section>
		</div>
	</div>
</div>
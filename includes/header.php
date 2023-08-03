<?php if ($_SESSION['login']) { ?>
	<div class="top-header">
		<div class="container">
			<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
				<li class="hm"><a><i class="fa fa-home"></i></a></li>
				<li class="prnt"><a href="profile.php">Profil</a></li>
				<li class="prnt"><a href="change-password.php">Ganti Kata Sandi</a></li>
				<li class="prnt"><a href="tour-history.php">Riwayat Booking</a></li>
				<!-- <li class="prnt"><a href="issuetickets.php">Riwayat Masalah</a></li> -->
			</ul>
			<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s">
				<li class="tol">Selamat Datang :</li>
				<li class="sig"><?php echo htmlentities($_SESSION['login']); ?></li>
				<li class="sigi"><a href="logout.php">/ Keluar</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
	</div><?php } else { ?>
	<div class="top-header">
		<div class="container">
			<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
				<li class="hm"><a><i class="fa fa-home"></i></a></li>
				<li class="hm"><a href="admin/index.php">Admin Login</a></li>
			</ul>
			<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s">
				<li class="sig"><a href="#" data-toggle="modal" data-target="#myModal">Daftar</a></li>
				<li class="sigi"><a href="#" data-toggle="modal" data-target="#myModal4"> Login</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
	</div>
<?php } ?>
<!--- /top-header ---->
<!--- header ---->
<div class="header">
	<div class="container">
		<div class="logo wow fadeInDown animated" data-wow-delay=".5s">
			<a href="index.php">Digitalisasi <span> Gili Air</span></a>
		</div>

		<div class="lock fadeInDown animated" data-wow-delay=".5s">
			<li><i class=""></i></li>
			<li>
				<div class="securetxt"> </div>
			</li>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /header ---->
<!--- footer-btm ---->
<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".5s">
	<div class="container">
		<div class="navigation">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav">
							<li><a href="index.php">Home</a></li>
							<li><a href="package-list.php">Penginapan</a></li>
							<li><a href="enquiry.php">Penyebrangan</a></li>
							<li><a href="page.php?type=aboutus">Tentang</a></li>
							<li><a href="https://api.whatsapp.com/send?phone=082339106934">Kontak kami</a></li></a></li>

							<!-- <li><a href="page.php?type=privacy">Privacy Policy</a></li>
								<li><a href="page.php?type=terms">Terms of Use</a></li> -->
							<!-- <li><a href="page.php?type=contact">Contact Us</a></li> -->

							<?php if ($_SESSION['login']) { ?>
								<li><a href="#" data-toggle="modal" data-target="#myModal3"> Kirim Bukti Pembayaran </a> </li>
							<?php } else { ?>
							<?php } ?>
							<div class="clearfix"></div>

						</ul>
					</nav>
				</div><!-- /.navbar-collapse -->
			</nav>
		</div>

		<div class="clearfix"></div>
	</div>
</div>
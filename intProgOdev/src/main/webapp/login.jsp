<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Giris Ekrani</title>


<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">


<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #6a1a21">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main" style="background-color: #6a1a21">

<!--sisteme giris yapılan sayfanın jsp kodu-->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content" >
					<div class="signin-image">
						<figure>
							<img src="images/giris.jpg" alt="sing up image">
							<img src="images/mehmet.jpg" alt="sing up image ">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Kayit Ol</a>
					</div>  <!-- kayıt ol denildiği zaman kayıt ol sekmesine giden komut -->

					<div class="signin-form">
						<h2 class="form-title">Giris</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Isminiz" />  <!-- isim yerinin girildiği yer -->
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Sifre" />    <!-- şifre kısmının girildiği yer -->
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Beni Hatirla</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Giris" style="background-color: #6a1a21" />   <!-- giriş butonunun komutu bu butona bastıktan sonra bootstrap yerine giden yer -->
							</div>
						</form>

					</div>
				</div>
			</div>
		</section>

	</div>


	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">

	var status =document.getElementById("status").value;
	if (status =="failed"){
		swal("Giris Yapilamadi","Hatali isim veya sifre","error")  <!-- hatalı girişte ekrana gelen uyarı -->
	}
</script>
</body>
</html>
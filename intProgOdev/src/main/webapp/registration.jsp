<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Kayit ol </title>

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">


<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #6a1a21">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">


	<div class="main" style="background-color: #6a1a21" >


		<!-- sisteme kayıt olan jsp kodu -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Kayit Ol</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form" >
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Isminiz" />  <!-- ismin girildiği satır -->
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="E mailiniz" />  <!-- emailin girildiği satır -->
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Sifreniz" />  <!-- şifrenin girilidiği satır -->
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>  <!-- sifrenin tekrar girilip kontrol edileceği yer -->
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Sifrenizi tekrar giriniz" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Telefon No" />  <!-- telefon numarasının girildiği yer -->
							</div>

							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Kayit Ol" style="background-color: #6a1a21" />  <!-- kayıt ol butonuyla mysgl e veri aktarımının yapılacağı buton -->
							</div>
						</form>
					</div>
					<div class="signup-image" >
						<figure>
							<img src="images/mehmet.jpg" alt="sing up image">
							<img src="images/kayit.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">Ben Zaten Uyeyim</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>  <!-- katyıt yapıldığında çıktı veren kod -->
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">

	var status =document.getElementById("status").value;
	if (status =="success"){
		swal("Tamamlandi","Kayit Basarili","success")
	}
</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
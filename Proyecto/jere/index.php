<!DOCTYPE html>
<html lang="en">
<head>
<link type="text/css" href="estilo.css"  rel="stylesheet"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>CEPVA LOGIN</title>
    <style>
        .divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #0000FF;
}
.h-custom {
height: calc(100% - 73px);
}
@media (max-width: 450px) {
.h-custom {
height: 100%;
}
}
    </style>
</head>
<body>

<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">

      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form action="validar.php" method="POST">
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
          
          <div style="width: 200px; height: 200px; border: 1px white solid; background: url('logo.png'); no-repeat; background-size: 200px; "></div>

          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">LOGIN</p>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="form3Example3" name="correo" class="form-control form-control-lg" placeholder="Correo Electronico" required/>
            <label class="form-label" for="form3Example3">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="form3Example4" name="clave" class="form-control form-control-lg" placeholder="Contraseña" required/>
            <label class="form-label" for="form3Example4">Password</label>
          </div>


          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">ACCEDER</button>
        
          </div>

        </form>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      JEREMIAS PINCEL
    </div>
    <!-- Copyright -->

    <!-- Right -->

   

</section>

</body>
</html>

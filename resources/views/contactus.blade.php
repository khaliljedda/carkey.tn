

   <!DOCTYPE html>
<html lang="zxx">

<head>
  <title> {{setting('site.title')}} </title>
  <!--meta tags -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="Organic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
  />
  <script>
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);


    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!--booststrap-->
  <link href="frontEnd/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="frontEnd/css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="frontEnd/css/style.css" rel='stylesheet' type='text/css' media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Patrick+Hand" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
  <link rel="shortcut icon" href="storage/{{setting('site.logo')}}" />
  <link rel="apple-touch-icon" href="storage/{{setting('site.logo')}}">

</head>

<body>
  <!-- //banner -->
  
    <!-- header -->
      @include('partials.header')
    <!-- //header -->
   
  <!-- contact -->
  <section class="contact py-lg-4 py-md-4 py-sm-3 py-3" id="contact">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <h3 class="title text-center mb-2">Contact</h3>
      <div class="title-w3ls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
        <p>Nous restons à votre disposition
        </p>
      </div>
      <div class="contact-form">
      @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div>
   
    @endif

    @if(session('message'))
       <div class="alert alert-success">
        <ul>
            {{session('message')}}
        </ul>
      </div>
     
    @endif
    
    
        <form action="/contact" method="POST">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
              <input name="firstname" type="text" class="form-control" placeholder="First Name" required="">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
              <input name="lastname" type="text" class="form-control" placeholder="Last Name" required="">
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
              <input name="phone" type="text" class="form-control" placeholder="Phone" required="">

            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 form-group contact-forms">
              <input name="email" type="email" class="form-control" placeholder="Email" required="">
            </div>
          </div>
          <div class="form-group contact-forms">
            <textarea name="message" class="form-control" placeholder="Meassage" required=""></textarea>
          </div>
          <button type="submit" class="btn sent-butnn btn-lg">Send</button>
        </form> 
      </div>
    </div>
  </section>
  @include('partials.footer')

</body>

</html>
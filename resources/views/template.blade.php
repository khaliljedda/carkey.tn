
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
  <link href="\frontEnd/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="\frontEnd/css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="\frontEnd/css/style.css" rel='stylesheet' type='text/css' media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Patrick+Hand" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
  <link rel="shortcut icon" href="storage/{{setting('site.logo')}}" />
  <link rel="apple-touch-icon" href="storage/{{setting('site.logo')}}">

</head>

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
  <link href="\frontEnd/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="\frontEnd/css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="\frontEnd/css/style.css" rel='stylesheet' type='text/css' media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Patrick+Hand" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
  <link rel="shortcut icon" href="storage/{{setting('site.logo')}}" />
  <link rel="apple-touch-icon" href="storage/{{setting('site.logo')}}">

</head>

<body>
  <!-- //banner -->
  
    
  <!-- contact -->
  
  
    <!-- header -->
      @include('partials.header')
    
    <!-- //header -->
<section class="about py-lg-4 py-md-4 py-sm-3 py-3" id="about">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
    
    
    <h3 class="title text-center mb-2">service</h3>
    
      
      <div class="title-w3ls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
        <p>{{$service->title}}
        </p>
      </div>
      <div class="row">
        <div class="col-lg-5 video-info-img text-center position-relative">
          <div class="abut-img-w3l">
            <img src="storage/{{$service->image}}" alt="" class="img-fluid" >
          </div>
          <!--<div class="abut-img-two">
            <img src="storage/{{setting('site.about-image2')}}" alt="" class="img-fluid">
          </div>-->
        </div>
        <div class="col-lg-7 left-abut-txt ">
          <div class="about-right-grid">
            <h2 class="mb-3">{{$service->description}}</h2>
              <p> ---</p>
          </div>
        </div>
      </div>
    </div>
  </section>
   @include('partials.footer')

</body>

</html>
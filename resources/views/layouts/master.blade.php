
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
  <style>
    .logoet{
      height: 150px;
      max-width: 100px
      border-radius: 15%;  
        }
        #myVideo {
  position: absolute;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
}


  @-webkit-keyframes swinging{

    0%{-webkit-transform: rotate(10deg);}
    50%{-webkit-transform: rotate(-5deg)}
    100%{-webkit-transform: rotate(10deg);}
}
 
@keyframes swinging{
    0%{transform: rotate(10deg);}
    50%{transform: rotate(-5deg)}
    100%{transform: rotate(10deg);}
}
 
.swingimage{
	position: absolute;
	left:5%;
	  -webkit-transform-origin: 50% 0;
    transform-origin: 50% 0;
    -webkit-animation: swinging 3.0s ease-in-out forwards infinite;
    animation: swinging 3.0s ease-in-out forwards infinite;
}
.swingimage1{

	position: absolute;
	left:10%;
	  -webkit-transform-origin: 65% 50%;
    transform-origin: 65% 0;
    -webkit-animation: swinging 3.5s ease-in-out forwards infinite;
    animation: swinging 3.5s ease-in-out forwards infinite;
}




  </style>
  <script>
  
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);


    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.4.0/dist/css/uikit.min.css" />

<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.4.0/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.4.0/dist/js/uikit-icons.min.js"></script>
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
  <div class="banner-left-side" id="home"  >
    <!-- header -->
    
          @include('partials.header')
    <!-- //header -->
    <!-- banner -->
    
	<img class="swingimage1" src="frontEnd/images/cle.png" />
    <img class="swingimage" src="frontEnd/images/bmw.png" />
     
      <div class="text-center">
     
                 <img src="storage/{{setting('site.image')}}"  style=" position: relative; " />
       <div class="banner-right-txt">
       	
     
        
          <h5 class="mb-sm-3 mb-2">{{setting('site.subtitle')}}</h5>
          <h4 >{{setting('site.title')}} </h4>
        </div>
        <div class="slide-info-txt">
          <p></p>
        </div>
      </div>
    </div> 
  
  <!-- //banner -->
  <!-- about -->

  <section class="about py-lg-4 py-md-4 py-sm-3 py-3" id="about">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
    
		
		<h3 class="title text-center mb-2">Accueil</h3>
		
      
      <div class="title-w3ls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
        <p>{{setting('site.description')}}
        </p>
      </div>
      <div class="row">
        <div class="col-lg-5 video-info-img text-center position-relative">
          <div class="abut-img-w3l">
            <img src="storage/{{$abouts[0]->image}}" alt="" class="img-fluid" >
          </div>
          <!--<div class="abut-img-two">
            <img src="storage/{{setting('site.about-image2')}}" alt="" class="img-fluid">
          </div>-->
        </div>
        <div class="col-lg-7 left-abut-txt ">
          <div class="about-right-grid">
            <h2 class="mb-3">{{$abouts[0]->title}}</h2>
              <p> {{$abouts[0]->text}}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--//about -->
  <!-- store-info -->
  <section class="store-info py-lg-4 py-md-4 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-7 store-details">
          <h4 class="mb-3">{{$abouts[1]->title}}</h4>
          <p>{{$abouts[1]->text}}</p>
          <div class="view-buttn mt-md-4 mt-3">
            <a href="#blog">Read More</a>
          </div>
        </div>

        <div class="col-lg-5 store-image-right">
          <img src="storage/{{$abouts[1]->image}}" alt="" class="img-fluid">
        </div>
      </div>
    </div>
  </section>
  <!--//store-info -->
  <!-- service -->
  <section class="service py-lg-4 py-md-4 py-sm-3 py-3" id="service">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <h3 class="title text-center mb-2">Services</h3>
      <div class="title-w3ls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
      </div>
      <div class="row">
      @foreach($services as $service)    	
        <div class="col-lg-4 col-md-6 col-sm-6 ser-icon text-center my-3" >
          <a href="/service/{{$service->id}}">
        
          <div class="grid-wthree-service">
            <img src="storage/{{$service->image}}" alt="news image" class="img-fluid">
            <div class="ser-text-wthree mt-3">
              <h4>
                {{$service->title}}
              </h4> 
              <p class="mt-2">description ...</marquee></p>
            </div>
          </div>
         </a>
        </div>  
        @endforeach
        <!--<div class="col-lg-4 col-md-6 col-sm-6 ser-icon text-center my-3">
          <div class="grid-wthree-service">
            <img src="frontEnd/images/ab2.jpg" alt="news image" class="img-fluid">
            <div class="ser-text-wthree mt-3">
              <h4>
                Fresh Fruits
              </h4>
              <p class="mt-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 ser-icon text-center my-3">
          <div class="grid-wthree-service">
            <img src="frontEnd/images/ab3.jpg" alt="news image" class="img-fluid">
            <div class="ser-text-wthree mt-3">
              <h4>
                Garden Tillage
              </h4>
              <p class="mt-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 ser-icon text-center my-3">
          <div class="grid-wthree-service">
            <img src="frontEnd/images/ab4.jpg" alt="news image" class="img-fluid">
            <div class="ser-text-wthree mt-3">
              <h4>
                Awesome Wheats
              </h4>
              <p class="mt-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 ser-icon text-center my-3">
          <div class="grid-wthree-service">
            <img src="frontEnd/images/ab1.jpg" alt="news image" class="img-fluid">
            <div class="ser-text-wthree mt-3">
              <h4>
                Garden Tillage
              </h4>
              <p class="mt-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 ser-icon text-center my-3">
          <div class="grid-wthree-service">
            <img src="frontEnd/images/ab2.jpg" alt="news image" class="img-fluid">
            <div class="ser-text-wthree mt-3">
              <h4>
                Agro Machinery
              </h4>
              <p class="mt-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
            </div>
          </div>
        </div>-->
      </div>
    </div>
  </section>
  <!--//service -->
  <!-- vegetable-info -
  <section class="veg-info py-lg-4 py-md-4 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-7">
          <img src="frontEnd/images/bb4.jpg" alt="news image" class="img-fluid">
        </div>
        <div class="col-lg-5 veg-list-text">
          <div class="row mb-2">
            <div class="col-lg-7 col-md-7 col-sm-7 col-7 text-right py-lg-2 py-1 w3three-veg-org">
              <h6>$ 3.50</h6>
              <h5 class="my-2">BeetRoot</h5>
              <p>consectetuer adip sit amet</p>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5 col-5 p-0">
              <img src="frontEnd/images/v1.jpg" alt="news image" class="img-fluid">
            </div>
          </div>
          <div class="row mb-2">
            <div class="col-lg-7 col-md-7 col-sm-7 col-7 text-right py-2 py-1 w3three-veg-org">
              <h6>$ 2.75</h6>
              <h5 class="my-2">Tomato</h5>
              <p>consectetuer adip sit amet</p>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5 col-5 p-0">
              <img src="frontEnd/images/v2.jpg" alt="news image" class="img-fluid">
            </div>
          </div>
          <div class="row mb-2">
            <div class="col-lg-7 col-md-7 col-sm-7 col-7 text-right py-2 py-1 w3three-veg-org">
              <h6>$ 5.20</h6>
              <h5 class="my-2">Carrot</h5>
              <p>consectetuer adip sit amet</p>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5 col-5 p-0">
              <img src="frontEnd/images/v3.jpg" alt="news image" class="img-fluid">
            </div>
          </div>
          <div class="row">
            <div class="col-lg-7 col-md-7 col-sm-7 col-7 text-right py-2 py-1 w3three-veg-org">
              <h6>$ 3.00</h6>
              <h5 class="my-2">Berries</h5>
              <p>consectetuer adip sit amet</p>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5 col-5 p-0">
              <img src="frontEnd/images/v4.jpg" alt="news image" class="img-fluid">
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--//vegetable-info -->
  <!-- gallery -->

  <section class="blog py-lg-4 py-md-3 py-sm-3 py-3" id="gallery">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <h3 class="title text-center mb-2">Galerie </h3>
      <div class="title-w3ls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
        <p>
        </p>
      </div>
      <div class="row gallery-info">
      @foreach($photos as $photo)
        <div class="col-lg-4 col-md-6 col-sm-6 gallery-img-grid my-3">
          <div class="gallery-grids">
            <a href="#gal{{$photo->id}}">
              <img src="storage/{{$photo->image}}" alt="news image" class="img-fluid">
            </a>
          </div>
        </div>
      @endforeach
        <!--<div class="col-lg-4 col-md-6 col-sm-6 gallery-img-grid my-3">
          <div class="gallery-grids">
            <a href="#gal2">
              <img src="frontEnd/images/bb2.jpg" alt="news image" class="img-fluid">
            </a>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 gallery-img-grid my-3">
          <div class="gallery-grids">
            <a href="#gal3">
              <img src="frontEnd/images/bb3.jpg" alt="news image" class="img-fluid">
            </a>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 gallery-img-grid my-3">
          <div class="gallery-grids">
            <a href="#gal4">
              <img src="frontEnd/images/g2.jpg" alt="news image" class="img-fluid">
            </a>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 gallery-img-grid my-3">
          <div class="gallery-grids">
            <a href="#gal5">
              <img src="frontEnd/images/g3.jpg" alt="news image" class="img-fluid">
            </a>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 gallery-img-grid my-3">
          <div class="gallery-grids">
            <a href="#gal6">
              <img src="frontEnd/images/g4.jpg" alt="news image" class="img-fluid">
            </a>
          </div>
        </div>-->
      </div>
      <!-- popup-->
      @foreach($photos as $photo)
      <div id="gal{{$photo->id}}" class="popup-effect">
        <div class="popup">
          <img src="storage/{{$photo->image}}" alt="Popup Image" class="img-fluid">
          <a class="close" href="#gallery">×</a>
        </div>
      </div>
      @endforeach

      <!-- //popup -->
     
    </div>
  </section>
  
  <!--//gallery -->
  <!-- blog -->
  <section class="py-lg-5 py-md-4 py-sm-3 py-3" id="blog">
    <div style="margin-left:10%;margin-right: 10%;">
    <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slider="autoplay:true ;autoplayInterval:2000">

    <ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m">
          <li>
              <img class="logoet" src="frontEnd/images/ford.png" alt="">
         </1i>
         <li>
             
              <img class="logoet" src="frontEnd/images/oudi.png" alt="">
        </li>
      
        <li>
             
              <img class="logoet" src="frontEnd/images/oudi.png" alt="">
        </li>
        
         
        <li>
             
              <img class="logoet" src="frontEnd/images/oudi.png" alt="">
        </li>
         <li>
             
              <img class="logoet" src="frontEnd/images/oudi.png" alt="">
        </li>
        
         <li>
              <img class="logoet" src="https://getuikit.com/docs/images/slider2.jpg" alt="">
        </li>
        <li>
             
              <img class="logoet" src="frontEnd/images/oudi.png" alt="">
        </li>
    </ul>

    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>




</section>

     <!-- <div class="row">
        <div class="blog-wthree-color col-lg-4 position-relative my-3">
          <div class="w3ls-post-img">
            <img src="frontEnd/images/bb2.jpg" class="img-fluid" alt="">
            <div class="blog-info">
              <a href="#about">
                <ul>
                  <li>JUL</li>
                  <li>15</li>
                </ul>
              </a>
            </div>
          </div>
          <div class="blog-txt-info">
            <h4 class="mb-2">
              <a href="#about">Health Benefits of a Raw Food </a>
            </h4>
            <p></p>
            <div class="news-date-list pt-2">
              <ul>
                <li class="mr-1">
                  <a href="#">12/4/2019</a>
                </li>
                <li>
                  <a href="#">3 Tags</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="blog-wthree-color col-lg-4 position-relative my-3">
          <div class="w3ls-post-img">
            <img src="frontEnd/images/bb3.jpg" class="img-fluid" alt="">
            <div class="blog-info">
              <a href="#about">
                <ul>
                  <li>JUL</li>
                  <li>15</li>
                </ul>
              </a>
            </div>
          </div>
          <div class="blog-txt-info">
            <h4 class="mb-2">
              <a href="#about">Health Benefits of a Raw Food </a>
            </h4>
            <p></p>
            <div class="news-date-list pt-2">
              <ul>
                <li class="mr-1">
                  <a href="#">12/4/2019</a>
                </li>
                <li>
                  <a href="#">3 Tags</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="blog-wthree-color col-lg-4 position-relative my-3">
          <div class="w3ls-post-img">
            <img src="frontEnd/images/g4.jpg" class="img-fluid" alt="">
            <div class="blog-info">
              <a href="#about">
                <ul>
                  <li>JUL</li>
                  <li>15</li>
                </ul>
              </a>
            </div>
          </div>
          <div class="blog-txt-info">
            <h4 class="mb-2">
              <a href="#about">Health Benefits of a Raw Food </a>
            </h4>
            <p></p>
            <div class="news-date-list pt-2">
              <ul>
                <li class="mr-1">
                  <a href="#">12/4/2019</a>
                </li>
                <li>
                  <a href="#">3 Tags</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </section>
  <!--//blog -->
  <!--------------------------------------slider--------------------------------------------------->


<!----------------------------------------------/slider------------------------------------------------------>
</div>
  <section>
    <div class="container-fulid">
      <div class="address_mail_footer_grids">
        
     <iframe  src="https://www.google.com/maps/embed/v1/place?q=35.651396,+10.881469&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div>
    </div>
  </section>
  <section class="contact py-lg-4 py-md-4 py-sm-3 py-3" id="contact">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <h3 class="title text-center mb-2">Contact</h3>
      <div class="title-w3ls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
        <p>Nous restons à votre disposition</p>
      </div >
           <a href="/contactus" style="margin-left:45%"> <button class="btn btn-success">Contacter nous </button></a>
      </div>
    </div>
  
  @include('partials.footer');

</body>

</html>
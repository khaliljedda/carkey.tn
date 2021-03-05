<!-- footer -->
<section class="footer-w3layouts-bottem py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
      <div class="row ">
        <div class="footer-bottom-info col-lg-4 col-md-4 ">
          <h4 class="pb-lg-4 pb-md-3 pb-3 ">Address</h4>
          <div class="bottom-para ">
            <div class="footer-office-hour">
              <ul>
                <li class="mb-2">
                  <h6>Address</h6>
                </li>
                <li>
                  <p>{{setting('site.adress')}}</p>
                   
                </li>
              </ul>
              <ul>
                <li class="my-2">
                  <h6>Phone</h6>
                </li>
                <li>
                  <p>{{setting('site.telephone')}}</p>
                </li>
                <li class="my-2">
                  <h6>Email</h6>
                </li>
                <li>
                  <p>
                    <a href="{{setting('site.email')}}">{{setting('site.email')}}</a>
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="footer-bottom-info col-lg-4 col-md-4 ">
          <h4 class="pb-lg-4 pb-md-3 pb-3 ">Réseau social</h4>
          <div class="footer-office-hour">
          <ul>
                <li class="mb-2">
                  <h6>facebook</h6>
                </li>
                <li>
                  <p>{{setting('site.facebook')}}</p>
                   
                </li>
              </ul>
              <ul>
                <li class="my-2">
                  <h6>instagram</h6>
                </li>
                <li>
                  <p>{{setting('site.instagram')}}</p>
                </li>
               <li class="my-2">
                  <h6>Email</h6>
                </li>
                <li> 
                  <p>
                    <a href="{{setting('site.email')}}">{{setting('site.email')}}</a>
                  </p>
                </li>
              </ul>
          </div>
        </div>
        <div class="footer-bottom-info col-lg-4 col-md-4 ">
          <h4 class="pb-lg-4 pb-md-3 pb-3 ">Message</h4>
          <div class="newsletter">
            <form action="/sendmail" method="POST" class="d-flex">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
              <input type="email" name="email" class="form-control" placeholder="Your Email" required="">
              <button class="btn1">
                <span class="fa fa-envelope-o" aria-hidden="true"></span>
              </button>
            </form>
          </div>
          <div class="footer-office-hour mt-3">
            <p></p>
          </div>
        </div>
      </div>
      <!-- move icon -->
      <div class="text-center mt-lg-5 mt-md-4 mt-3">
        <a href="#home" class="move-top text-center mt-3">
          <span class="fa fa-arrow-up" aria-hidden="true"></span>
        </a>
      </div>
      <!--//move icon -->
    </div>
  </section>
  <!--footer-copy-right -->
  <footer class="bottem-wthree-footer text-center py-md-4 py-3">
      <p>
        Created by
      <a href="http://khalil.tn/" target="_blank">khalil</a>
    </p>
  </footer>
  <!--//footer-copy-right -->
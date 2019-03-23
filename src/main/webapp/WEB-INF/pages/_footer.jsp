<footer class="page-footer grey darken-3">
         <div class="container">
            <div class="row">
               <div class="col l6 s12">
                  <h5 class="red-text">Company Bio</h5>
                  <p class="grey-text text-lighten-4">Training Institute Pune is a leading institute in Pune conducting training programs for various software fields & provides certification for both individuals and organizations.Training Institute Pune offers IT services and training.
				  We have built a strong reputation to provide an excellent service to individuals with a team of fully qualified professionals.</p>
               </div>
               <div class="col l2 s12">
                  <h5 class="lime-text">About Us</h5>
				  <ul>
                     <li><a class="white-text" href="toAboutUs">Company</a></li>
                  </ul>
                <!--  <ul>
                     <li><a class="white-text" href="#!">Link 1</a></li>
                     <li><a class="white-text" href="#!">Link 2</a></li>
                     <li><a class="white-text" href="#!">Link 3</a></li>
                     <li><a class="white-text" href="#!">Link 4</a></li>
                  </ul>-->
               </div>
			   <div class="col l2 s12">
                  <h5 class="lime-text">Courses</h5>
               </div>
               <div class="col l2 s12">
                  <a href="toContactUs"><h5 class="lime-text">Contact Us</h5></a>
               </div>
            </div>
         </div>
      
<style>
.social-icons{display:flex;flex-wrap:wrap}
.social-icons svg{margin:0 24px 15px 0;height:24px;width:24px}
.social-icons svg{fill:#666;margin:0 48px 20px 0;height:48px;width:48px;opacity:.5;transition:opacity .2s}

</style>
<script>
jQuery(document).ready(function() {
function count($this){
var current = parseInt($this.html(), 10);
current = current + 1; /* Where 1 is increment */
$this.html(++current);
if(current > $this.data('count')){
$this.html($this.data('count'));
} else {
setTimeout(function(){count($this)}, 50);
}
}

jQuery(".stat-count").each(function() {
jQuery(this).data('count', parseInt(jQuery(this).html(), 10));
jQuery(this).html('0');
count(jQuery(this));
});
});
</script>
		 
		 <!-- Section: Follow
		 
  <section class="section section-follow teal darken-2 white-text center">
    <div class="container">
      <div class="row">
        <div class="col s12 m4">
          <h4>Follow Creative</h4>
          <ul class="social-icons">
		  
                <li>
                  <a class="waves-effect waves-light btn"><i class="fa fa-facebook fa-fw"></i> Facebook</a>
                  </a>
                </li> 
                <li>
                  <a class="waves-effect waves-light btn-floating social google"><i class="fa fa-google"></i></a>
                </li>
                <li>
                  <a class="waves-effect waves-light btn-large social google href="http://snapchat.com/" title="Materialize Shopify Themes on Snapchat">
                    <span class="icon-fallback-text">Snapchat</span>
                  </a>
                </li>
				<li>
                  <a href="http://vimeo.com/" title="Materialize Shopify Themes on Vimeo,">
                    <span class="icon-fallback-text">Vimeo,</span>
                  </a>
                </li>
          </ul>
        </div>
      </div>
    </div>
  </section> -->
		 
         <div class="footer-copyright">
            <div class="container">
			<div class="row">
				<div class="col s12 m10">
               &copy; 2019 Creative solutions - <a class="brown-text text-lighten-3" href="http://materializecss.com">All rights reserved</a>
            </div>
			<div class="col s12 m2">
               Visitors: - <span id="counter" class="brown-text text-lighten-3 stat-count">4000</span>
            </div>
            </div>
         </div>
		 </div>
      </footer>
	  <button type="button" id="back-to-top" class="btn-floating btn-large scale-transition z-depth-4 waves-effect waves-light red"><i class="material-icons white-text">keyboard_arrow_up</i></button>
	  
	  <!--<button id="reset">Reset</button>-->
 
<script>
var n = localStorage.getItem('on_load_counter');
if (n === null) {
    n = 0;
}
n++;
localStorage.setItem("on_load_counter", n);
 
document.getElementById('counter').innerHTML = n;
 
function reset_counter() {
    localStorage.removeItem('on_load_counter');
}
document.getElementById('reset').addEventListener('click', reset_counter);
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Cornell's Alumni Trustee Election: I voted! Did you?</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="Content-Language" content="en-us" />

<!-- Twitter Cards -->

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@cornellalumni">
<meta name="twitter:creator" content="@cornellalumni">
<meta name="twitter:title" content="Cornell's 2019 Alumni Trustee Election: I voted! Did you?">
<meta name="twitter:description" content="By voting, you are helping to select the alumni-elected members of the Cornell University Board of Trustees who guide the future of our alma mater. Cornell is one of the few major universities that offer their alumni this opportunity, so make sure you are ALL IN and vote!">
<meta name="twitter:image:src" content="https://app.aad.cornell.edu/trustees/img/ATV19-YHAVbanner-1200x630.png">
<meta name="twitter:url" content="https://alumni.cornell.edu/trustees" />

<!-- End Twitter Cards -->

<!-- Facebook Open Graph -->

<meta property="og:title" content="Cornell's 2019 Alumni Trustee Election: I voted! Did you?" />
<meta property="og:site_name" content="Cornell University Alumni"/>
<meta property="og:url" content="https://app.alumni.cornell.edu/trustees/ivoted.cfm" />
<meta property="fb:app_id" content="580515542334135" />
<meta property="og:description" content="By voting, you are helping to select the alumni-elected members of the Cornell University Board of Trustees who guide the future of our alma mater. Cornell is one of the few major universities that offer their alumni this opportunity, so make sure you are ALL IN and vote!" />
<meta property="og:type" content="website" />
<meta property="og:image"  content="https://app.aad.cornell.edu/trustees/img/ATV19-YHAVbanner-1200x630.png" /> 

<!-- End Facebook Open Graph -->

<!-- Facebook Pixel Code -->

<script>

!function(f,b,e,v,n,t,s)

{if(f.fbq)return;n=f.fbq=function(){n.callMethod?

n.callMethod.apply(n,arguments):n.queue.push(arguments)};

if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';

n.queue=[];t=b.createElement(e);t.async=!0;

t.src=v;s=b.getElementsByTagName(e)[0];

s.parentNode.insertBefore(t,s)}(window,document,'script',

'https://connect.facebook.net/en_US/fbevents.js');


fbq('init', '575252836229179'); 

fbq('track', 'PageView');

</script>

<noscript>

<img height="1" width="1" 

src="https://www.facebook.com/tr?id=575252836229179&ev=PageView

&noscript=1"/>

</noscript>

<!-- End Facebook Pixel Code -->

<!-- AddThis JS -->

<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5435428b36f42d17" async="async" ></script>

<!-- End AddThis JS -->

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-111430295-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-111430295-3');
</script>
<!-- End Google Analytics -->

<link rel="shortcut icon" href="favicon_000.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" media="screen" href="_includes/styles/screen.css" />
<cfinclude template="_includes/menu_css.cfm">

<link rel="stylesheet" type="text/css" media="screen" href="_includes/styles/tabs.css" />

<link rel="stylesheet" type="text/css" href="css/picedit.css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">

<style>
	.photo {}
	ul.candidates { list-style:none; margin:0 0 0 1em;; padding: 0 0; }
	.candidates li { float:left; width:25%; text-align:center; display:block; list-style:none; list-style-image:none; background:none; margin:0 0; padding:0 0; }
	.candidates li img { margin-bottom:.7em; }
	a{color: #b31b1b;text-decoration: none;}
</style>
</head>

<body class="twocolumn" style="background-color: #ffffff">
<cfinclude template="../_includes/header.cfm">
<div id="header">
  <cfinclude template="_includes/main-nav.cfm">
  <hr />
  <cfinclude template="_identity.cfm">
</div>
<hr />
<div id="wrap">
 <div id="pagetitle">
     <h1>Thank you for voting in Cornell's 2019 Alumni Trustee Election!</h1>
  </div>
  <div id="content">

<!---
    <div class="section-navigation-wrap">
      <cfinclude template="_nav.cfm">
    </div>
--->

   
    <div id="main">
     <h2> Share the news and encourage your alumni friends to vote by posting an <i>I voted!</i> selfie on social!</h2>
     <p>&nbsp;</p>
     <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <div class="addthis_sharing_toolbox"></div>
        <p>&nbsp;</p>
        
    	<!---Photo sticker app--->
    <!--- Insert the new record ---> 
<cfif IsDefined("Form.email") and isValid("email", #Form.email#)>
    <cfquery name="AddEmail" datasource="#request.dsn#">
    INSERT INTO PHOTOSTICKER (email, submit_dt)
    VALUES (
        <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.email#">,
        #createodbcdatetime(now())#
        ) 
    </cfquery> 
</cfif>
<div id="thebox" class="picedit_box">
	<!-- Picedit canvas element -->
	<div class="picedit_canvas_box">
		<div class="picedit_action_btns active">
			<div class="center">Take a selfie or upload a photo by dragging/browsing</div>
			<div class="picedit_control ico-picedit-picture" data-action="load_image" onclick="pageTracker._trackEvent('Photosticker upload', 'Click', 'Trustee Photosticker upload photo');"></div>
			<div class="picedit_control ico-picedit-camera" data-action="camera_open" onclick="pageTracker._trackEvent('Photosticker camera', 'Click', 'Trustee Photosticker camera open');"></div>
		</div>
		<div id="canvas-container" class="picedit_canvas">
			<canvas id="canvas" width="400px" height="400px"> This text is displayed if your browser does not support HTML5 Canvas</canvas>
		</div>
		<div class="picedit_video">
			<video autoplay></video>
			<div class="picedit_video_controls">
				<span class="picedit_control  ico-picedit-checkmark" data-action="take_photo" ></span>
				<span class="picedit_control  ico-picedit-close" data-action="camera_close"></span>
			</div>
		</div>
		<div class="picedit_drag_resize">
			<div class="picedit_drag_resize_canvas"></div>
			<div class="picedit_drag_resize_box">
				<div class="picedit_drag_resize_box_corner_wrap">
					<div class="picedit_drag_resize_box_corner"></div>
				</div>
				<div class="picedit_drag_resize_box_elements">
					<span class="picedit_control  ico-picedit-checkmark" data-action="crop_image"></span>
					<span class="picedit_control  ico-picedit-close" data-action="crop_close"></span>
				</div>
			</div>
		</div>
	</div>
	<!--Stickers-->
	<div id="stickers">
		<div style="width:410px; text-align: center;">
			<h2 style="margin:8px; text-align: left;">Choose a sticker!</h2>
		</div>
    <span class="picedit_control sticker picedit_sticker" title="Sticker" onclick="pageTracker._trackEvent('Photosticker CBear', 'Click', 'Trustee Photosticker CBear');"><img  id="sticker_1" src="img/I-Voted-CBear.png" width="100%" /></span>
    <span class="picedit_control sticker picedit_sticker" title="Sticker" onclick="pageTracker._trackEvent('Photosticker CUSeal', 'Click', 'Trustee Photosticker CUSeal');"><img  id="sticker_2" src="img/I-Voted-CUseal.png" width="100%" /></span>
    <span class="picedit_control sticker picedit_sticker" title="Sticker" onclick="pageTracker._trackEvent('Photosticker FullBear', 'Click', 'Trustee Photosticker FullBear');"><img  id="sticker_3" src="img/I-Voted-FullBear.png" width="100%"/></span>
		<form method="post" id="email_form" action="#CGI.script_name#">
<!---			<p></p>
			<p style="font-size:0.75em;">Your email address is safe with us.  Do you want to know more?  <a style="color:#b31b1b;" href="#">Read our privacy policy</a></p>--->
		</form>
		<h4 id="result" style="margin:0;"></h4>
	</div>
	<!--Picedit message-->
	<div class="picedit_message">
		<span class="picedit_control ico-picedit-close" data-action="hide_messagebox"></span>
		
	</div>
	<!-- Picedit navigation -->
	<div class="picedit_nav_box">
		<ul class="picedit_nav_elements" style="list-style-type:none;">
			<!-- Picedit button element begin -->
			<li class="picedit_element" style="background:none;"> <span class="picedit_control" title="Rotate" data-action="rotate_cw"><i class="fa fa-repeat fa-lg"></i><b> Rotate</b></span></li>
			<!-- Picedit button element end -->
			<!-- Picedit button element begin -->
			<li class="picedit_element" style="background:none;"><span class="picedit_control" title="Crop" data-action="crop_open"><i class="fa fa-crop fa-lg"></i><b> Crop</b></span> </li>
			<!-- Picedit button element end -->
			<!-- Picedit button element begin -->
			<li class="picedit_element" style="background:none;"><span class="picedit_control" title="Discard" data-action="discard_image"><i class="fa fa-trash fa-lg"></i><b>Discard</b></span></li>
			<!-- Picedit button element end -->
			<!-- Picedit button element begin -->
<!---			<li class="picedit_element" style="background:none;"><a id="downloadImg" class="picedit_control" title="Download" onclick="$('#downloadImg').attr('href', canvas.toDataURL("image/png"));" download="Cornell_Profile.png" href="#"><i class="fa fa-download fa-lg"></i><b> Download</b></a> </li>--->
			<li class="picedit_element" style="background:none;"><span class="picedit_control" title="Download" data-action="download_image" onclick="pageTracker._trackEvent('Photosticker Download', 'Click', 'Trustee Photosticker download');"><i class="fa fa-download fa-lg"></i><b> Download</b></span></li>
		</ul>
	</div>
</div>    
    <!---End of Photo sticker app--->
    
    <p>&nbsp;</p>
<!--     <h2>Haven't voted yet?      </h2>-->
<!--     <p>You've been sent here by a friend to encourage you to cast your own vote. Here's how:</p>-->

  <p>For more information about the Board of Trustees, including the current list of members and the charter provision, please visit <a href="https://trustees.cornell.edu" target="_blank" rel="noreferrer">https://trustees.cornell.edu</a></p>
  
  <p>For more information about the Committee on Alumni Trustee Nominations, please visit <a href="https://alumni.cornell.edu/volunteer/leadership/trustees/guide/" target="_blank" rel="noreferrer">https://alumni.cornell.edu/volunteer/leadership/trustees/guide/</a>&nbsp;</p>
  
  <p>Results from this election will be shared in early April and <a href="https://givegab-cornell-alumni.herokuapp.com/communities/cornell-university-board-of-trustees/positions/alumni-elected-trustee-cornell-university-board-of-trustees" target="_blank">nominations</a> for the 2020 ballot open on April 2, 2019 - May 2, 2019.</p>


  </div>
</div>
<hr />
<!---<cfinclude template="/_includes/footer-secure.cfm">--->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="application/javascript" src="js/fabric.js"></script>
<!---<script type="application/javascript" src="js/FileSaver.min.js"></script>--->
<script type="text/javascript" src="js/plugin.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
</body>
</html>

{% import "macros/render.tpl" as render %}
{% helper config %}
{% helper weather %}

{% set title %}{% block title %}{% endblock %}{% endset %}

{% if not active %}
	{% set active %}{% block active %}{% endblock %}{% endset %}
{% endif %}

{% set subActive %}{% block subActive %}{% endblock %}{% endset %}

{% set description %}{% block description %}{% endblock %}{% endset %}

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="generator" content="Gryphon {{ config.appVersion }} (Foundry {{ config.foundryVersion }})" />

	<meta name="title" content="Detroit Softworks{{ title|default(" :: Detroit Softworks") }}" />
	<meta name="description" content="{{ description|default("Detroit Softworks") }}" />

	<script type="text/javascript" src="{{ 'javascript/vendor/mootools/mootools-1.2.4-compressed.js'|url }}"></script>

	{% if noIndex %}
		<meta name="robots" content="noindex, nofollow" />
	{% endif %}

	<title>Detroit Softworks{{ title|default(" :: Detroit Softworks") }}</title>

	{% if config.get('debug') %}
		<script type="text/javascript" src="{{ 'javascript/vendor/offspring.js'|url }}"></script>
		<script type="text/javascript" src="{{ 'javascript/vendor/rosewood.js'|url }}"></script>
		<script type="text/javascript" src="{{ 'javascript/base.js'|url }}"></script>
		<script type="text/javascript" src="{{ 'javascript/expandable.js'|url }}"></script>
		
		<script type="text/javascript" src="{{ 'style_chroma/js/jquery/effects.js'|url }}"></script>
		<script type="text/javascript" src="{{ 'style_chroma/js/jquery/jquery-1.3.2.min.js'|url }}"></script>
		<script type="text/javascript" src="{{ 'style_chroma/js/jquery/jquery-ui-1.7.2.min.js'|url }}"></script>

		<script src="{{ 'javascript/vendor/video-js/video.js'|url }}" type="text/javascript" charset="utf-8"></script>
	{% else %}
		<script src="{{ 'javascript/snews.compressed.js'|url }}" type="text/javascript"></script>
	{% endif %}

	{% block styles %}{% endblock %}
	{% block scripts %}{% endblock %}
	{% block links %}{% endblock %}

	<link rel="icon" type="image/png" href="{{ 'style_chroma/images/favico.png'|url }}" />
	<link rel="stylesheet" type="text/css" media="screen, projection" href="{{ 'style_chroma/screen/master.css'|url }}" />
	<link rel="stylesheet" type="text/css" media="print" href="{{ 'style_chroma/print/master.css'|url }}" />
	<!--[if IE 6]>
		<link rel="stylesheet" type="text/css" media="screen, projection" href="{{ 'style_chroma/screen/ie6.css'|url }}" />
	<![endif]-->
	<link rel="stylesheet" href="{{ 'javascript/vendor/video-js/video-js.css'|url }}" type="text/css" media="screen" title="Video JS" charset="utf-8">
	<script type="text/javascript" charset="utf-8">
		VideoJS.setupAllWhenReady({
			linksHiding: true,
			controlsHiding: true
		});
	</script>


	<link rel="alternate" type="application/rss+xml" title="Top Stories" href="http://feeds.feedburner.com/statenews/top" />


	<script type="text/javascript">
	
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-1362565-1']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
	  })();
	
	</script>
</head>
<body>
	
	<div class="container_12"> <!-- CENTERS EVERYTHING -->
		<div id="ticker">
			<span id="date">{{ now|date('l F j, Y') }}  &nbsp;&nbsp;  Detroit, MI | Since 2009 | &nbsp;&nbsp;{{ weather }}, {{ weather.temp }}&deg; F | {{ weather.tempC }}&deg; C</span>
			<span id="links"><a href="{{ 'page/contact'|url }}">Contact Us</a> | <a href="#">Advertise</a> | <a href="{{ 'classifieds'|url }}">Classifieds</a> | <a href="{{ 'page/feeds'|url }}">Feeds</a></span>
				
				<form id="search" method="get" action="{{ 'search'|url }}" class="search-form">
					<input class="search_button" type="image" name="submit" src="{{ 'style_chroma/images/search_icon.png'|url }}" width="13" height="13" alt="search">			
					<input id="search_field" class="search replace-text" type="text" name="search" value="Search Detroit Softworks" />
				</form> 
				
		</div>
	
		<div id="logo_wrapper">
			<a href="#"><img src="{{ 'style_chroma/images/client/logo_header.png'|url }}" /></a>
		</div>
	
			
		<div id="border"> <!-- PUTS 1px GRAY BORDER WITH 1px PADDING AROUND NAV, CONTENT, FOOTER.  -->
				
			<div id="header">
				
				
				{% include "gryphon/navigation.tpl" %}

		
			</div>
		

			<div class="container_12" id="main-content"> <!-- 960.GS STARTS HERE. DONT FORGET TO USE "CLEAR" DIVs AFTER EACH ROW! -->
				
				{# THIS IS THE MAIN CONTENT BLOCK #}
				{% block content %}{% endblock %}
				
				<div class="grid_12">
					<div class="advertisement leaderboard">
						<script type="text/javascript"><!--
						google_ad_client = "pub-3894131125488372";
						/* SN Leaderboard Bottom */
						google_ad_slot = "2177491549";
						google_ad_width = 728;
						google_ad_height = 90;
						//-->
						</script>
						<script type="text/javascript"
						src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
						</script>
					</div>
				</div>

				<div class="clear"></div> <!-- LEAVE THIS CLEAR DIV!! OTHERWISE, THE CONTAINER WILL COLLAPSE! -->


			</div>
		
			<div class="container_12" id="footer">
				<div class="grid_2">
							<ul>
								<li><h3>News</h3></li>
								<li><a href="{{ 'section/campus'|url }}">Campus</a></li>
								<li><a href="{{ 'section/city'|url }}">City</a></li>
								<li><a href="{{ 'section/briefs'|url }}">Police Briefs</a></li>
								<li><a href="{{ 'crime'|url }}">Crime Map</a></li>
							</ul>
							<ul>
								<li><h3>Opinion</h3></li>
								<li><a href="{{ 'section/editorials'|url }}">Editorials</a></li>
								<li><a href="{{ 'section/columns'|url }}">Columns</a></li>	
								<li><a href="{{ 'section/letters'|url }}">Letters</a></li>				
							</ul>
							<ul>
								<li><h3>Entertainment</h3></li>
								<li><a href="{{ 'section/dining'|url }}">Dining Guide</a></li>
								<li><a href="{{ 'section/calendar'|url }}">Calendar</a></li>
							</ul>
						</div>
						
						<div class="grid_2">
							<ul>
								<li><h3>Sports</h3></li>
								<li><a href="{{ 'section/baseball'|url }}">Baseball</a></li>
								<li><a href="{{ 'section/basketball'|url }}">Basketball</a></li>	
								<li><a href="{{ 'section/crosscountry'|url }}">Cross Country</a></li>
								<li><a href="{{ 'section/football'|url }}">Football</a></li>
								<li><a href="{{ 'section/golf'|url }}">Golf</a></li>
								<li><a href="{{ 'section/gymnastics'|url }}">Gymnastics</a></li>
								<li><a href="{{ 'section/hockey'|url }}">Ice Hockey</a></li>
								<li><a href="{{ 'section/soccer'|url }}">Soccer</a></li>
								<li><a href="{{ 'section/softball'|url }}">Softball</a></li>
								<li><a href="{{ 'section/swimmingdiving'|url }}">Swimming & Diving</a></li>
								<li><a href="{{ 'section/trackfield'|url }}">Track & Field</a></li>
								<li><a href="{{ 'section/volleyball'|url }}">Volleyball</a></li>
							</ul>
						</div>
						
						<div class="grid_2">
							<ul>
								<li><a href="{{ 'blog'|url }}">blogs</a></li>
								<li><a href="{{ 'smartPub'|url }}">Classifieds</a></li>
								<li><a href="{{ 'page/religious'|url }}">Religious Guide</a></li>
								<li><a href="{{ 'page/puzzles'|url }}">Puzzles</a></li>
								<li><a href="{{ 'page/mobile'|url }}">Mobile Edition</a></li>
							</ul>
							<ul>
								<li><h3>Multimedia</h3></li>
								<li><a href="{{ 'multimedia/flashVideo'|url }}">Videos</a></li>
								<li><a href="{{ 'gallery'|url }}">Photo Galleries</a></li>
								<li><a href="{{ 'multimedia'|url }}">Podcasts</a></li>
							</ul>
							<ul>
								<li><h3>Features</h3></li>
								<li></li><a href="{{ 'section/features'|url }}">Special Editions</a></li>
							</ul>
						</div>
						
						<div class="grid_2">
							<ul class="title_links">
								<li><a href="{{ 'page/archives'|url }}">Archives</a></li>
								<li><a href="{{ 'search'|url }}">Search</a></li>
								<li><a id="feeds" href="{{ 'page/feeds'|url }}">Feeds</a></li>
								<li><a href="http://reprints.statenews.com">Photo Reprints</a></li>
								<li><a href="http://advertise.statenews.com">Advertise With Us</a></li>
								<li><a href="http://snaa.statenews.com">Alumni</a></li>
								<li><a href="{{ 'page/work'|url }}">Work Here</a></li>
								<li><a href="{{ 'page/contact'|url }}">Contact Us</a></li>
								<li><a href="{{ 'page/privacy'|url }}">Privacy Policy</a></li>
							</ul>
							<ul>
								<li class="title">Follow Us:</li>
								<li><a id="facebook" href="http://www.facebook.com/pages/The-State-News/62758758853">Facebook</a></li>
								<li><a id="twitter" href="http://twitter.com/thesnews">Twitter</a></li>
							</ul>
						</div>
						
						<div class="grid_2">

								{% fetch pdf from media with [
									'where': 'status = 1',
									'limit': 1,
									'order': 'uid desc',
									'withTags': ['frontpage', 'pdf']
								] %}
							
								<ul>
								<li><a href="{{ pdf[0].urlOriginal }}"><img id="paper" src="{{ pdf[0].urlPreview }}" alt="frontpage" /></a></li>
								<li><a href="{{ 'page/pdf'|url }}">More Page Fronts</a></li>
								<li><a href="http://reprints.statenews.com">Reprints</a></li>
							</ul>
						</div>
						
						<div class="grid_2">
							

							<a id="gryphon_logo_footer" title="Gryphon CMS" href="http://detroitsoftworks.com/index.php/page/gryphon"></a>
							<a id="dsw_logo_footer" title="Detroit Softworks" href="http://detroitsoftworks.com/"></a>

						</div>
						<p><b>Detroit Softworks</b> offers a hosted CMS, web ad management, and reprint sales solution for your publication. With unprecedented control over your site’s design and Web ads, content delivery, and ecommerce-grade security, you can rest easy in the knowledge that <b>It. Just. Works.</b></p>
						
										
						<div class="clear"></div>
						<div id="copyright" class="small">
							All Content &copy; Copyright 2010, The State News | Valid <a href="http://validator.w3.org/check/referer">HTML</a> & <a href="http://jigsaw.w3.org/css-validator/validator?uri=#">CSS</a><br />
							Proudly powered by <a href="http://detroitsoftworks.com">Detroit Softworks</a><br />
						</div>
			</div>
		
		</div>
	</div>

</body>
</html>
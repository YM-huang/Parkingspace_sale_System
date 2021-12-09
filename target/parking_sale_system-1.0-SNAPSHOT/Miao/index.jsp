<%--
  Created by IntelliJ IDEA.
  User: kbdnzzzzz
  Date: 2021/12/7
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Homestate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />


    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,300' rel='stylesheet' type='text/css'>

    <!-- Animate.css -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<%=path%>/Miao/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/bootstrap.css">
    <!-- Superfish -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/superfish.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/flexslider.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/magnific-popup.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/bootstrap-datepicker.min.css">
    <!-- CS Select -->
    <link rel="stylesheet" href="<%=path%>/Miao/css/cs-select.css">
    <link rel="stylesheet" href="<%=path%>/Miao/css/cs-skin-border.css">

    <link rel="stylesheet" href="<%=path%>/Miao/css/style.css">


</head>
<body>
<div id="fh5co-wrapper">
    <div id="fh5co-page">

        <header id="fh5co-header-section" class="sticky-banner">
            <div class="container">
                <div class="nav-header">
                    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                    <h1 id="fh5co-logo"><a href="index.html"><i class="icon-home"></i>Parking Space</a></h1>
                    <!-- START #fh5co-menu-wrap -->
                    <nav id="fh5co-menu-wrap" role="navigation">
                        <ul class="sf-menu" id="fh5co-primary-menu">
                            <li class="active"><a href="index.html">Home</a></li>
                            <li>
                                <a href="properties.html" class="fh5co-sub-ddown">Properties</a>
                                <ul class="fh5co-sub-menu">
                                    <li><a href="#">Family</a></li>
                                    <li><a href="#">CSS3 &amp; HTML5</a></li>
                                    <li><a href="#">Angular JS</a></li>
                                    <li><a href="#">Node JS</a></li>
                                    <li><a href="#">Django &amp; Python</a></li>
                                </ul>
                            </li>
                            <li><a href="agent.html">Agent</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>

        <!-- end:header-top -->

        <aside id="fh5co-hero" class="js-fullheight">
            <div class="flexslider js-fullheight">
                <ul class="slides">
                    <li style="background-image: url(images/img_bg_1.jpg);">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-4 col-md-pull-4 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="status">Sale</span>
                                            <h1>New House in Canada, UK</h1>
                                            <h2 class="price">$4,000.00</h2>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <p class="details">
                                                <span>2000 ft sq</span>
                                                <span>4 Bedrooms</span>
                                                <span>3 Bathrooms</span>
                                                <span>2 Garage</span>
                                            </p>
                                            <p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(images/img_bg_2.jpg);">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-4 col-md-pull-4 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="status">Rent</span>
                                            <h1>New House in Canada, UK</h1>
                                            <h2 class="price">$2000/mos</h2>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <p class="details">
                                                <span>2000 ft sq</span>
                                                <span>4 Bedrooms</span>
                                                <span>3 Bathrooms</span>
                                                <span>2 Garage</span>
                                            </p>
                                            <p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(images/img_bg_3.jpg);">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-4 col-md-pull-4 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="status">Sale</span>
                                            <h1>New House in Canada, UK</h1>
                                            <h2 class="price">$4,000.00</h2>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                            <p class="details">
                                                <span>2000 ft sq</span>
                                                <span>4 Bedrooms</span>
                                                <span>3 Bathrooms</span>
                                                <span>2 Garage</span>
                                            </p>
                                            <p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </aside>

        <div id="fh5co-search-map">
            <div class="search-property">
                <div class="s-holder">
                    <h2>Search Properties</h2>
                    <div class="row">
                        <div class="col-xxs-12 col-xs-12">
                            <div class="input-field">
                                <label for="from">Keyword:</label>
                                <input type="text" class="form-control" id="from-place" placeholder="Any"/>
                            </div>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Property Status:</label>
                                <select class="cs-select cs-skin-border">
                                    <option value="" disabled selected>Any</option>
                                    <option value="1">Rent</option>
                                    <option value="2">Sale</option>
                                </select>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Property Type:</label>
                                <select class="cs-select cs-skin-border input-half">
                                    <option value="" disabled selected>Any</option>
                                    <option value="1">Building</option>
                                    <option value="2">Office</option>
                                </select>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <div class="input-field">
                                <label for="from">Location:</label>
                                <input type="text" class="form-control" id="from-place" placeholder="Any"/>
                            </div>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Price:</label>
                                <div class="wide">
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                </div>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Bedrooms:</label>
                                <div class="wide">
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                </div>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Bathrooms:</label>
                                <div class="wide">
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                </div>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Area:</label>
                                <div class="wide">
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                </div>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12">
                            <section>
                                <label for="class">Parking spots:</label>
                                <div class="wide">
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                    <select class="cs-select cs-select-half cs-skin-border input-half">
                                        <option value="" disabled selected>Any</option>
                                        <option value="1">Building</option>
                                        <option value="2">Office</option>
                                    </select>
                                </div>
                            </section>
                        </div>
                        <div class="col-xxs-12 col-xs-12 text-center">
                            <p><a class="btn btn-primary btn-lg" href="#">Learn More</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="map" style="background-image: url(images/cover_bg_1.jpg);">
            </div>
        </div>

        <div id="fh5co-features">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 animate-box">

                        <div class="feature-left">
							<span class="icon">
								<i class="icon-map"></i>
							</span>
                            <div class="feature-copy">
                                <h3>Move House</h3>
                                <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                <p><a href="#">Learn More</a></p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 animate-box">
                        <div class="feature-left">
							<span class="icon">
								<i class="icon-browser"></i>
							</span>
                            <div class="feature-copy">
                                <h3>Mortgage</h3>
                                <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                <p><a href="#">Learn More</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="feature-left">
							<span class="icon">
								<i class="icon-wallet"></i>
							</span>
                            <div class="feature-copy">
                                <h3>Make Money</h3>
                                <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                <p><a href="#">Learn More</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 animate-box">

                        <div class="feature-left">
							<span class="icon">
								<i class="icon-piechart"></i>
							</span>
                            <div class="feature-copy">
                                <h3>Business Home</h3>
                                <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                <p><a href="#">Learn More</a></p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4 animate-box">
                        <div class="feature-left">
							<span class="icon">
								<i class="icon-genius"></i>
							</span>
                            <div class="feature-copy">
                                <h3>Marketing</h3>
                                <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                <p><a href="#">Learn More</a></p>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="feature-left">
							<span class="icon">
								<i class="icon-chat"></i>
							</span>
                            <div class="feature-copy">
                                <h3>Explorer</h3>
                                <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                <p><a href="#">Learn More</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="fh5co-popular-properties" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>Popular Properties</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 animate-box">
                        <a href="#" class="fh5co-property" style="background-image: url(images/property-1.jpg);">
                            <span class="status">Sale</span>
                            <div class="prop-details">
                                <span class="price">$3,000</span>
                                <h3>Properties Near in Beach, USA California</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 animate-box">
                        <a href="#" class="fh5co-property" style="background-image: url(images/property-2.jpg);">
                            <span class="status">Rent</span>
                            <div class="prop-details">
                                <span class="price">$200/mos</span>
                                <h3>Modern House at NZ</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 animate-box">
                        <a href="#" class="fh5co-property" style="background-image: url(images/property-3.jpg);">
                            <span class="status">Sale</span>
                            <div class="prop-details">
                                <span class="price">$3,000</span>
                                <h3>Bonggalo House</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div id="fh5co-testimonial" style="background-image:url(images/img_bg_2.jpg);">
            <div class="container">
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                        <h2>Happy Clients</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="box-testimony animate-box">
                            <blockquote>
                                <span class="quote"><span><i class="icon-quotes-right"></i></span></span>
                                <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                            </blockquote>
                            <p class="author">John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
                        </div>

                    </div>
                    <div class="col-md-4">
                        <div class="box-testimony animate-box">
                            <blockquote>
                                <span class="quote"><span><i class="icon-quotes-right"></i></span></span>
                                <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
                            </blockquote>
                            <p class="author">John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
                        </div>


                    </div>
                    <div class="col-md-4">
                        <div class="box-testimony animate-box">
                            <blockquote>
                                <span class="quote"><span><i class="icon-quotes-right"></i></span></span>
                                <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                            </blockquote>
                            <p class="author">John Doe, Founder <a href="#">FREEHTML5.co</a> <span class="subtext">Creative Director</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div id="fh5co-properties" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>Newest Properties</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 animate-box">
                        <div class="property">
                            <a href="#" class="fh5co-property" style="background-image: url(images/property-1.jpg);">
                                <span class="status">Sale</span>
                                <ul class="list-details">
                                    <li>2000 ft sq<li>
                                    <li>5 Bedroom:</li>
                                    <li>4 Bathroom:</li>
                                    <li>3 Garage:</li>
                                </ul>
                            </a>
                            <div class="property-details">
                                <h3>Properties Near in Beach</h3>
                                <span class="price">$3,000</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores.</p>
                                <span class="address"><i class="icon-map"></i>Thomas Street, St. Louis, MO 8990, USA</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="property">
                            <a href="#" class="fh5co-property" style="background-image: url(images/property-2.jpg);">
                                <span class="status">Rent</span>
                                <ul class="list-details">
                                    <li>2000 ft sq<li>
                                    <li>5 Bedroom:</li>
                                    <li>4 Bathroom:</li>
                                    <li>3 Garage:</li>
                                </ul>
                            </a>
                            <div class="property-details">
                                <h3>Modern House at NZ</h3>
                                <span class="price">$200/mos</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores.</p>
                                <span class="address"><i class="icon-map"></i>Thomas Street, St. Louis, MO 8990, USA</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="property">
                            <a href="#" class="fh5co-property" style="background-image: url(images/property-3.jpg);">
                                <span class="status">Sale</span>
                                <ul class="list-details">
                                    <li>2000 ft sq<li>
                                    <li>5 Bedroom:</li>
                                    <li>4 Bathroom:</li>
                                    <li>3 Garage:</li>
                                </ul>
                            </a>
                            <div class="property-details">
                                <h3>Bonggalo House</h3>
                                <span class="price">$3,000</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores.</p>
                                <span class="address"><i class="icon-map"></i>Thomas Street, St. Louis, MO 8990, USA</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="property">
                            <a href="#" class="fh5co-property" style="background-image: url(images/property-4.jpg);">
                                <span class="status">Sale</span>
                                <ul class="list-details">
                                    <li>2000 ft sq<li>
                                    <li>5 Bedroom:</li>
                                    <li>4 Bathroom:</li>
                                    <li>3 Garage:</li>
                                </ul>
                            </a>
                            <div class="property-details">
                                <h3>Properties at Alaska</h3>
                                <span class="price">$3,000</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores.</p>
                                <span class="address"><i class="icon-map"></i>Thomas Street, St. Louis, MO 8990, USA</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="property">
                            <a href="#" class="fh5co-property" style="background-image: url(images/property-5.jpg);">
                                <span class="status">Rent</span>
                                <ul class="list-details">
                                    <li>2000 ft sq<li>
                                    <li>5 Bedroom:</li>
                                    <li>4 Bathroom:</li>
                                    <li>3 Garage:</li>
                                </ul>
                            </a>
                            <div class="property-details">
                                <h3>Modern Properties</h3>
                                <span class="price">$200/mos</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores.</p>
                                <span class="address"><i class="icon-map"></i>Thomas Street, St. Louis, MO 8990, USA</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 animate-box">
                        <div class="property">
                            <a href="#" class="fh5co-property" style="background-image: url(images/property-6.jpg);">
                                <span class="status">Sale</span>
                                <ul class="list-details">
                                    <li>2000 ft sq<li>
                                    <li>5 Bedroom:</li>
                                    <li>4 Bathroom:</li>
                                    <li>3 Garage:</li>
                                </ul>
                            </a>
                            <div class="property-details">
                                <h3>House at the Top of Mountain</h3>
                                <span class="price">$3,000</span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores.</p>
                                <span class="address"><i class="icon-map"></i>Thomas Street, St. Louis, MO 8990, USA</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="fh5co-about" class="fh5co-agent">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>Our Agents</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
                        <div class="fh5co-staff">
                            <img class="img-responsive" src="images/user-1.jpg" alt="Free HTML5 Templates by freeHTML5.co">
                            <h3>Jean Smith</h3>
                            <p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
                            <p class="fh5co-social-icons">
                                <a href="#"><i class="icon-twitter2"></i></a>
                                <a href="#"><i class="icon-facebook2"></i></a>
                                <a href="#"><i class="icon-instagram"></i></a>
                                <a href="#"><i class="icon-dribbble2"></i></a>
                                <a href="#"><i class="icon-youtube"></i></a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
                        <div class="fh5co-staff">
                            <img class="img-responsive" src="images/user-2.jpg" alt="Free HTML5 Templates by freeHTML5.co">
                            <h3>Hush Raven</h3>
                            <p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
                            <p class="fh5co-social-icons">
                                <a href="#"><i class="icon-twitter2"></i></a>
                                <a href="#"><i class="icon-facebook2"></i></a>
                                <a href="#"><i class="icon-instagram"></i></a>
                                <a href="#"><i class="icon-dribbble2"></i></a>
                                <a href="#"><i class="icon-youtube"></i></a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
                        <div class="fh5co-staff">
                            <img class="img-responsive" src="images/user-3.jpg" alt="Free HTML5 Templates by freeHTML5.co">
                            <h3>Alex King</h3>
                            <p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
                            <p class="fh5co-social-icons">
                                <a href="#"><i class="icon-twitter2"></i></a>
                                <a href="#"><i class="icon-facebook2"></i></a>
                                <a href="#"><i class="icon-instagram"></i></a>
                                <a href="#"><i class="icon-dribbble2"></i></a>
                                <a href="#"><i class="icon-youtube"></i></a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-3 text-center animate-box" data-animate-effect="fadeIn">
                        <div class="fh5co-staff">
                            <img class="img-responsive" src="images/user-4.jpg" alt="Free HTML5 Templates by freeHTML5.co">
                            <h3>Hush Raven</h3>
                            <p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat</p>
                            <p class="fh5co-social-icons">
                                <a href="#"><i class="icon-twitter2"></i></a>
                                <a href="#"><i class="icon-facebook2"></i></a>
                                <a href="#"><i class="icon-instagram"></i></a>
                                <a href="#"><i class="icon-dribbble2"></i></a>
                                <a href="#"><i class="icon-youtube"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="fh5co-blog-section" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>Recent From Blog</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row row-bottom-padded-md">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="fh5co-blog animate-box">
                            <a href="#"><img class="img-responsive" src="images/property-4.jpg" alt=""></a>
                            <div class="blog-text">
                                <div class="prod-title">
                                    <h3><a href="#">Properties for sale</a></h3>
                                    <span class="posted_by">Sep. 15th</span>
                                    <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p><a href="#">Learn More...</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="fh5co-blog animate-box">
                            <a href="#"><img class="img-responsive" src="images/property-2.jpg" alt=""></a>
                            <div class="blog-text">
                                <div class="prod-title">
                                    <h3><a href="#">Modern Home</a></h3>
                                    <span class="posted_by">Sep. 15th</span>
                                    <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p><a href="#">Learn More...</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix visible-sm-block"></div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="fh5co-blog animate-box">
                            <a href="#"><img class="img-responsive" src="images/property-3.jpg" alt=""></a>
                            <div class="blog-text">
                                <div class="prod-title">
                                    <h3><a href="#">15% Deal Discount For House</a></h3>
                                    <span class="posted_by">Sep. 15th</span>
                                    <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p><a href="#">Learn More...</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix visible-md-block"></div>
                </div>
            </div>
        </div>
        <!-- fh5co-blog-section -->
        <div id="fh5co-contact" class="fh5co-contact">
            <div class="half-contact">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12 col-md-offset-0 text-center heading-section animate-box">
                            <h3>Ask an agent, We're here to help 24/7</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 animate-box">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea name="" class="form-control" id="" cols="30" rows="7" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="submit" value="Send Message" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="half-bg" style="background-image: url(images/cover_bg_2.jpg);"></div>
        </div>
        <footer>
            <div id="footer">
                <div class="container">
                    <div class="row row-bottom-padded-md">
                        <div class="col-md-3">
                            <h3 class="section-title">About Homestate</h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics.</p>
                        </div>

                        <div class="col-md-3 col-md-push-1">
                            <h3 class="section-title">Links</h3>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Properties</a></li>
                                <li><a href="#">Agent</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">API</a></li>
                                <li><a href="#">FAQ / Contact</a></li>
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <h3 class="section-title">Information</h3>
                            <ul>
                                <li><a href="#">Terms &amp; Condition</a></li>
                                <li><a href="#">License</a></li>
                                <li><a href="#">Privacy &amp; Policy</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <h3 class="section-title">Newsletter</h3>
                            <p>Subscribe for our newsletter</p>
                            <form class="form-inline" id="fh5co-header-subscribe">
                                <div class="row">
                                    <div class="col-md-12 col-md-offset-0">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="email" placeholder="Enter your email">
                                            <button type="submit" class="btn btn-default"><i class="icon-paper-plane"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="fh5co-social-icons">
                                <a href="#"><i class="icon-twitter2"></i></a>
                                <a href="#"><i class="icon-facebook2"></i></a>
                                <a href="#"><i class="icon-instagram"></i></a>
                                <a href="#"><i class="icon-dribbble2"></i></a>
                                <a href="#"><i class="icon-youtube"></i></a>
                            </p>
                            <p>Copyright 2021  <a href="#">Module</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by <a href="https://github.com/YM-huang" target="_blank">Miao</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>



    </div>
    <!-- END fh5co-page -->

</div>
<!-- END fh5co-wrapper -->

<!-- jQuery -->


<script src="<%=path%>/Miao/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="<%=path%>/Miao/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<%=path%>/Miao/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=path%>/Miao/js/jquery.waypoints.min.js"></script>
<script src="<%=path%>/Miao/js/sticky.js"></script>
<!-- Superfish -->
<script src="<%=path%>/Miao/js/hoverIntent.js"></script>
<script src="<%=path%>/Miao/js/superfish.js"></script>
<!-- Flexslider -->
<script src="<%=path%>/Miao/js/jquery.flexslider-min.js"></script>
<!-- Date Picker -->
<script src="<%=path%>/Miao/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="<%=path%>/Miao/js/classie.js"></script>
<script src="<%=path%>/Miao/js/selectFx.js"></script>


<!-- Main JS -->
<script src="<%=path%>/Miao/js/main.js"></script>

</body>
</html>



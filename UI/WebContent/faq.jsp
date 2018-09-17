<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
  <%
      String uname=null; 
      uname = (String) session.getAttribute("suname"); %>
<html>
    <head>
        <title>Faq</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="main1.css"/>
   <script type="text/javascript" src="jquery.js"></script>
   <script>/* FAQ */
function toggle_answer(block, id, e) {
	/*$('#questions_' + block + ' .first_answer').removeClass('first_answer');*/
	if ($(e).parent().hasClass('selected')) {
		return false;
	}
	$('#questions_' + block + ' .answer').slideUp(130, function() {
		$(this).removeClass('first_answer');
	});
	$('#questions_' + block + ' > li').removeClass('selected');
	$('#answer_' + id).addClass('selected');
	$('#answer_' + id + ' > .answer').slideDown(130);
	return false;
}

function toggle_questions(block, e) {
	$('#faq_left .active').removeClass('active');
	$(e).addClass('active');
	$('#faq_right > ul').slideUp(300);
	$('#questions_' + block).slideDown(300);
	return false;
}</script>
   <style>
          #content {
	position: relative;
}	
#content #faq {
             
		height: 570px; /* 637px */
		clear: both;
		position: relative;
	}
		#content #faq_left {
			position: absolute;
			top: 0;
			left: 0;
			width: 269px;
			background: url('images/shadow_faq.png') no-repeat;
			height: 550px;
			padding: 35px 0 0 0;
			font-size: 105%;
			z-index: 5;
		}
			#content #faq_left a {
				display: block;
				font-style: italic;
				font-size: 150%;
				text-decoration: none;
				height: 30px;
				padding: 11px 0 11px 0;
			}
			#content #faq_left a:hover {
				color: #777;
			}
				#content #faq_left a img {
					/*vertical-align: baseline;*/
					margin-right: 5px;
				}
				#content #faq_left a.active {
					color: #ff9915 !important;
					/*text-shadow: #777 1px 1px 0;*/
					background: url('images/faq_active.png') -13px 0;
				}
					#content #faq_left a.active span {
						padding-bottom: 1px;
						border-bottom: 1px dotted #b4b4b4;
					}
		#content #faq_right {
			width: 100%;
			padding: 35px 0 0 0;
			position: absolute;
			top: 0;
			left: 246px;
			width: 690px;
			z-index: 10;
		}
			#content #faq_right > ul {
				font-size: 110%;
				list-style-type: none;
				list-style-position: inside;
			}
				#content #faq_right > ul > li {
					background: url('images/arrow.png') 0 5px no-repeat;
					margin-bottom: 20px;
					padding-left: 25px;
				}
				#content #faq_right > ul > li.selected {
					background: url('images/arrow_orange_down.png') 1px 3px no-repeat;
				}
					#content #faq_right > ul > li > a {
						text-decoration: none;
						font-size: 120%;
						display: block;
						margin-bottom: 10px;
                                                alignment-adjust: left;
					}
					#content #faq_right > ul > li > a:hover {
						color: #777;
					}
					#content #faq_right .answer {
						display: none;
					}
					#content #faq_right .first_answer {
						display: block !important;}

  
#wrapper {
    clear:left;
width: 940px;
margin-top: -330px;
margin-left: -25px;
padding:30px 30px 200px 30px;
box-shadow: 0 0 15px #bababa;
-moz-box-shadow: 0 0 15px #bababa;
webkit-box-shadow: 0 0 7px #bababa;
-moz-border-radius:3px;
-o-border-radius:3px;
-o-box-shadow: 0 0 15px #bababa;
-webkit-border-radius:3px;
behavior:url(border-radius.htc);
border: #cdcdcd 1px solid;
background-color:#fff;
}
#wrapper1 {
width: 940px;
padding:20px 20px 20px 20px;
-moz-border-radius:3px;
-o-border-radius:3px;
-o-box-shadow: 0 0 15px #bababa;
-webkit-border-radius:3px;
behavior:url(border-radius.htc);
border: #cdcdcd 1px solid;
background-color:#fff;
box-shadow: 0 0 7px #bababa;
-moz-box-shadow: 0 0 7px #bababa;
-webkit-box-shadow: 0 0 7px #bababa;
margin: 10px auto 10px auto;
}	

    </style> </head>
    <body>
    
	
      <div id="layout">
		<div id="header">
			<div id="panel">
				<div class="container">
					<span class="ip_lol">Welcome To Commercial Street</span> <span class="ip_flag">
        </span>
					<%if (uname == null) { %>    
					<div id="panel_right">
						<%
            Date date = new Date();
   out.print( "<h3 align=\"center\">" +date.toString()+"</h3>");
%>
					</div>
                                        <% 
                                            }
                                        else
                                            {
                                         %>
                                        <div id="panel_right">
                                            <a href="scart.jsp">Control Panel</a>
					</div>
<%}%>
				</div>
			</div>
       
			<div id="navigation" class="container">
				<div id="logo">
					<a href="index.jsp"><img src="imgs/logo.png" width="278px" height="24px" alt="Commerical Street" /></a>
				</div>
				<div id="menu">
					<a href="index.jsp">Home</a>
                                        <a href="contact.jsp" >Contact Us</a>
                                        <a href="products.jsp">Products</a>
                                        <a href="/en/faq.html" class="selected">FAQ</a>
				</div>
			</div></div></div>
                                <div id="wrapper1">
            <div id="content">
            <div id="faq">
					<div id="faq_left">

						<h2>FAQ's</h2>
						<a href="#faq" onclick="return toggle_questions(1, this)" class="active"><img src="/gal1/001.JPG" width="16px" height="13px" style="margin-top: 9px;" /> <span>Common questions</span></a>
						<a href="#faq" onclick="return toggle_questions(2, this)"><img src="/gal1/2.JPG" width="16px" height="14px" style="margin-top: 7px;" /> <span>About payments</span></a>
						<a href="#faq" onclick="return toggle_questions(4, this)"><img src="/gal1/004.JPG"" width="16px" height="16px" style="margin-top: 6px;" /> <span>Known problems</span></a>

					</div>
					<div id="faq_right">
						<ul id="questions_1">
							<li id="answer_10" class="selected">
								<a href="#faq" onclick="return toggle_answer(1, 10, this)">What is Commercial Street?</a>
								<div class="answer first_answer">
									Commercial Street is a office automation sales & services Repair company that services the entire bangalore. We provide same day service, with a 3-hour window We offer instant technical support All of our onsite technicians are certified.

								</div>
							</li>

							<li id="answer_20">
								<a href="#faq" onclick="return toggle_answer(1, 20, this)">How can i buy products?</a>
								<div class="answer">
									
									
									<p>For buying products, first you have to register to our website. After registration you should login with your Username and Password. </p>
									<p>Now you can buy Products by adding the Products to the cart by clicking on "Read more" button and further by clicking "Add cart" button. Then the product will be added successfully. </p>
									
									
								</div>

							</li>
					
							<li id="answer_50">
								<a href="#faq" onclick="return toggle_answer(1, 50, this)">Don’t your services support online crime?</a>
								<div class="answer">
									Any accounts reported to be involved in criminal use will be immediately blocked and all applicable records of that account stored for future legal use.
								</div>

							</li>
							<li id="answer_60">
								<a href="#faq" onclick="return toggle_answer(1, 60, this)">Can I trust you?</a>
								<div class="answer">
									
									
									
									
									<p>As you can see, we are not some kind of scum-site. We have been working for more than 2 year and developed our own software, so we can provide high-quality service that can be trusted.</p>
									
								</div>
							</li>
                                                        	<li id="answer_65">
								<a href="#faq" onclick="return toggle_answer(1, 65, this)">I have more questions; who can I contact?</a>
								<div class="answer">
									
							Contact us in any of the ways listed on the Support page.
									
								</div>
							</li>

						</ul>
						<ul id="questions_2" class="inv">
							<li id="answer_70" class="selected">
								<a href="#faq" onclick="return toggle_answer(2, 70, this)">How can I pay for U?</a>
								<div class="answer first_answer">
									
									
									Deposit in one of the below listed bank accounts and send the Payment Receipt to ---@gmail.com or Call us. We will immediately activate your account.                    <br/> Paypal Account: -----@gmail.com<br/>

                                                                        Name- --------<br/>

                                                                          Alertpay – ------@gmail.com<br/>
								</div>
							</li>
							<li id="answer_80">
								<a href="#faq" onclick="return toggle_answer(2, 80, this)">How can I add funds?</a>

								<div class="answer">
									Sorry, We don't accept any kind of funds.
                                                              
								</div>
							</li>
							<li id="answer_90">
								<a href="#faq" onclick="return toggle_answer(2, 90, this)">My credit card currency isn't IRS, is it possible to pay with it?</a>
								<div class="answer">
									Yes, you can. Your card's currency will be automatically converted to IRS. You can see the total sum at payment page.
								</div>

							</li>
							<li id="answer_100">
								<a href="#faq" onclick="return toggle_answer(2, 100, this)">Is it possible to buy products without registering?</a>
								<div class="answer">
								No.
								</div>
							</li>
						</ul>
						
						<ul id="questions_4" class="inv">
							
							<li id="answer_220">
								<a href="#faq" onclick="return toggle_answer(4, 220, this)">I forgot my password</a>

								<div class="answer">
									Use password recovery system and follow instructions provided in the email you receive.  
								</div>
							</li>
							
							</li>
							<li id="answer_270">
								<a href="#faq" onclick="return toggle_answer(4, 270, this)">I don’t understand a thing</a>
								<div class="answer">
									We probably do, so write to us.
								</div>
							</li>

						</ul>
					</div>
				</div>
                </div>
    </div>
</body></html>
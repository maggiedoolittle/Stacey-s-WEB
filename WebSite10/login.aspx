<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />
	
    
    <!-- ============================================
        Stylesheets
    ============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic|Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="style.css" type="text/css" />
    <link rel="stylesheet" media="only screen and (-webkit-min-device-pixel-ratio: 2)" type="text/css" href="css/retina.css" />
	<link rel="stylesheet" href="css/colors.php" type="text/css" />
    <link rel="stylesheet" href="css/kwicks.css" type="text/css" />
	<link rel="stylesheet" href="css/tipsy.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
	<link rel="stylesheet" href="login.css" type="text/css" />
    
    
    <link rel="stylesheet" href="css/responsive.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
	
	
    <!-- ============================================
        External JavaScripts
    ============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/jquery.kwicks.js"></script>
    
    
    <!-- ============================================
        Document Title
    ============================================= -->
	<title>登录</title>
    
    <?php include("demo/switcherhead.html"); ?>
</head>
<body  class="stretched">
    <form id="form1" runat="server">
    <div id="wrapper" class="clearfix">
    
     
    <div id="sticky-menu" class="clearfix">
        
            <div class="container clearfix">
            
                <div class="sticky-logo">
                
                    <a href="home.aspx"><img src="images/stickylogo.png" alt="CoWorker" title="CoWorker" /></a>
                
                </div>
                
                
                <div class="sticky-menu-wrap">
                
                    <ul>
                    
                        <li class="current"><a href="home.aspx"><div>主页</div><span>Let's Start here</span></a></li>
                    
                    </ul>
                
                </div>
                
                <div class="sticky-search-area">
                
                    </div>
                    
                
                </div>
            
            </div>
        
        </div>
        
        
        <div id="top-bar">
        
            <div class="container clearfix">
        
                 <div id="top-menu">
                
                    <ul>
                    
                        <li><span>/</span><a href="home.aspx">主页</a></li>
                        <li><div class="username"><asp:LoginName ID="LoginName1" runat="server" /></div></li>

                    </ul>
                
                </div>

            
            </div>        
        
        </div>
    
        
    
        
        
        
        
        <div id="content">
        
		    <div id="page-title">
			    <div class="container clearfix">
                
                    <h1>用户登录</h1>
                   
                </div>   
            </div>
			<div class="content-wrap">
            
            
                <div class="container clearfix">
                
			
			        <fieldset id="login-field">
				        &nbsp;<asp:Login ID="Login1" 
                            runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#333333" Width="394px" CreateUserText="注册" 
                            CreateUserUrl="~/register.aspx" 
                            DestinationPageUrl="~/personal-information.aspx">
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                            <TextBoxStyle Font-Size="0.8em" />
                            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                                ForeColor="White" />
                        </asp:Login>
				        </br ></br >
				        &nbsp;
				
				
                    </fieldset>
					<div class="clear"></div>
                    <div class="line"></div>
			
                </div>
			</div>	
        </div>
		
		
		</form>
		
		
		<div id="content-footer">
		</div>
        

        <div class="clear"></div>
        
        
        <div id="copyrights" class="copyrights-dark">
        
            <div class="container clearfix">
        
            
                <div class="col_half">
                
                    Copyrights &copy; 2016 &amp; All Rights Reserved by NUDT_QXSC.
                
                </div>
                
                <div class="col_half col_last tright">
                
                    <a href="home.aspx">关于我们</a><span class="link-divider">/</span><a href="home.aspx">联系我们</a><span class="link-divider">/</span><a href="home.aspx">常见问题</a>
                
                </div>
            
            
            </div>
        
        </div>


    </div>
    
    
    <div id="gotoTop" class="icon-angle-up"></div>


    <script type="text/javascript" src="js/custom.js"></script>
    </form>
</body>
</html>

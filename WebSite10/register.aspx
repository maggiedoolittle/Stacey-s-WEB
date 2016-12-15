<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
	<link rel="stylesheet" href="register.css" type="text/css" />
    
    
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
	<title>注册</title>
    
    <?php include("demo/switcherhead.html"); ?>
</head>
<body class="stretched">
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
        
        
       <div id="top-bar">
        
            <div class="container clearfix">
        
                 <div id="top-menu">
                
                     <ul>
                    
                        <li><span>/</span><a href="home.aspx">主页</a></li>
                        <li><span>/</span><a href="personal-information.aspx">会员中心</a></li>
                        <li><div class="username"><asp:LoginName ID="LoginName1" runat="server" /></div></li>
                            
                    
                    </ul>
                
                </div>

            
            </div>        
        
        </div>
    
 
        
      
                <div class="fallback-image">
                
                    <a href="#"><img src="images/slider/1.jpg" alt="Slider 1" /></a>
                
                </div>
                
                
                <div class="slider-line"></div>
            
            
            </div>
        
        
        </div>
        
        
        <div id="content">
        
		    <div id="page-title">
			    <div class="container clearfix">
                
                    <h1>用户注册</h1>
                   
                </div>   
            </div>
			<div class="content-wrap">
            
            
                <div class="container clearfix">
                
			
			        <fieldset id="register-field">
				        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#EFF3FB" 
                            BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Names="Verdana" Font-Size="0.8em" Height="400px" Width="500px" 
                            ContinueDestinationPageUrl="~/login.aspx">
                            <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" 
                                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                                ForeColor="#284E98" />
                            <CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" 
                                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                                ForeColor="#284E98" />
                            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <WizardSteps>
                                <asp:CreateUserWizardStep runat="server" />
                                <asp:CompleteWizardStep runat="server" />
                            </WizardSteps>
                            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                                HorizontalAlign="Center" />
                            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                                ForeColor="#284E98" />
                            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                                ForeColor="White" />
                            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
                            <StepStyle Font-Size="0.8em" />
                        </asp:CreateUserWizard>
&nbsp;</br ></br >
				        &nbsp;</fieldset>
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
                
                    <a href="#">关于我们</a><span class="link-divider">/</span><a href="#">联系我们</a><span class="link-divider">/</span><a href="#">常见问题</a>
                
                </div>
            
            
            </div>
        
        </div>


    </div>
    
    
    <div id="gotoTop" class="icon-angle-up"></div>


    <script type="text/javascript" src="js/custom.js"></script>

    </form>
</body>
</html>

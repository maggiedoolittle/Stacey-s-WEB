<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal-information.aspx.cs" Inherits="personal_information" %>

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
	<link rel="stylesheet" href="personal-information.css" type="text/css" />
    
    
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
	<title>个人信息</title>
    
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
    
        
        <div id="header" >
        
			<div id="header-container">
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
                
                    <h1>会员个人信息</h1>
                    <div id="top-search">
                    
                            &nbsp;</div>
                   
                </div>
            
            
            </div>
        
            
            <div class="content-wrap">
            
            
                <div class="container clearfix">
                
                
					<div id="content-middle">
						
					    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            DataFile="~/App_Data/db1.mdb" 
                            SelectCommand="SELECT * FROM [aa] WHERE ([username] = ?)" 
                            DeleteCommand="DELETE FROM [aa] WHERE [ID] = ?" 
                            InsertCommand="INSERT INTO [aa] ([ID], [username], [title], [author], [publish], [recency], [telephone], [QQ], [price]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                            UpdateCommand="UPDATE [aa] SET [username] = ?, [title] = ?, [author] = ?, [publish] = ?, [recency] = ?, [telephone] = ?, [QQ] = ?, [price] = ? WHERE [ID] = ?">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="author" Type="String" />
                                <asp:Parameter Name="publish" Type="String" />
                                <asp:Parameter Name="recency" Type="String" />
                                <asp:Parameter Name="telephone" Type="Int32" />
                                <asp:Parameter Name="QQ" Type="Int32" />
                                <asp:Parameter Name="price" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label2" Name="username" PropertyName="Text" 
                                    Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="author" Type="String" />
                                <asp:Parameter Name="publish" Type="String" />
                                <asp:Parameter Name="recency" Type="String" />
                                <asp:Parameter Name="telephone" Type="Int32" />
                                <asp:Parameter Name="QQ" Type="Int32" />
                                <asp:Parameter Name="price" Type="String" />
                                <asp:Parameter Name="ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:AccessDataSource>
						<br />
                        <div class="people-name">
                        <asp:Label ID="Label1" runat="server" Text="用户名:" Font-Size="Medium"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                        </div> 
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" 
                            DataKeyNames="ID" DataSourceID="AccessDataSource1" 
                            Width="767px" Height="171px">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                                    DataNavigateUrlFormatString="~/show_one_book.aspx?id={0}" DataTextField="title" 
                                    HeaderText="title" NavigateUrl="~/show_one_book.aspx">
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:HyperLinkField>
                                <asp:BoundField DataField="author" HeaderText="author">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="publish" HeaderText="publish">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="recency" HeaderText="recency">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="price">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:ButtonField CommandName="Delete" Text="删除" />
                            </Columns>
                        </asp:GridView>
						
					</div>

					
					<div id="content-down">
                        <div class="button-uploading-book">
                            <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
                             Text="上传新书" Width="116px" />
                        </div>
						
					</div>
					
					
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
                
                    <a href="home.apsx">关于我们</a><span class="link-divider">/</span><a href="home.apsx">联系我们</a><span class="link-divider">/</span><a href="home.apsx">常见问题</a>
                
                </div>
            
            
            </div>
        
        </div>


    </div>
    
    
    <div id="gotoTop" class="icon-angle-up"></div>


    <script type="text/javascript" src="js/custom.js"></script>
    </form>
</body>
</html>

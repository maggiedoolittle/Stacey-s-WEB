<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

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
	<link rel="stylesheet" href="search.css" type="text/css" />
    
    
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
	<title>搜索</title>
    
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
                
                    <h1>搜索你想要的书籍</h1>
                   
                </div>   
            </div>
			<div class="content-wrap">
            
            
                <div class="container clearfix">
                
					<div id="search-main">
						<div id="search-main1">
							    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="500px"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Height="40px" Text="搜索" 
                                Width="120px" />
						</div>
						<div id="search-main2">
							<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                DataFile="~/App_Data/db1.mdb" DeleteCommand="DELETE FROM [aa] WHERE [ID] = ?" 
                                InsertCommand="INSERT INTO [aa] ([ID], [username], [title], [author], [publish], [recency], [type], [telephone], [QQ], [price]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                                SelectCommand="SELECT * FROM [aa] WHERE ([title] LIKE '%' + ? + '%')" 
                                UpdateCommand="UPDATE [aa] SET [username] = ?, [title] = ?, [author] = ?, [publish] = ?, [recency] = ?, [type] = ?, [telephone] = ?, [QQ] = ?, [price] = ? WHERE [ID] = ?">
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
                                    <asp:Parameter Name="type" Type="String" />
                                    <asp:Parameter Name="telephone" Type="Int32" />
                                    <asp:Parameter Name="QQ" Type="Int32" />
                                    <asp:Parameter Name="price" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="title" Type="String" />
                                    <asp:Parameter Name="author" Type="String" />
                                    <asp:Parameter Name="publish" Type="String" />
                                    <asp:Parameter Name="recency" Type="String" />
                                    <asp:Parameter Name="type" Type="String" />
                                    <asp:Parameter Name="telephone" Type="Int32" />
                                    <asp:Parameter Name="QQ" Type="Int32" />
                                    <asp:Parameter Name="price" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:AccessDataSource>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                DataKeyNames="ID" DataSourceID="AccessDataSource1" GridLines="Horizontal" 
                                Height="70px" Width="921px" BackColor="White" BorderColor="#336666" 
                                BorderStyle="Double" BorderWidth="3px">
                                <Columns>
                                    <asp:HyperLinkField DataTextField="title" HeaderText="书名" 
                                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/show_one_book.aspx?id={0}" 
                                        NavigateUrl="~/show_one_book.aspx"  Target="_blank">
                                    <ControlStyle Font-Bold="True" Font-Names="叶根友蚕燕隶书(3500)" 
                                        Font-Size="XX-Large" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:HyperLinkField>
                                    <asp:BoundField DataField="author" HeaderText="作者" >
                                    <ControlStyle Font-Size="X-Large" />
                                    <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="publish" HeaderText="出版社" >
                                    <ControlStyle Font-Size="X-Large" />
                                    <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="价格(点击排序)" SortExpression="price" >
                                    <ControlStyle Font-Bold="True" Font-Names="Ruach LET" Font-Size="XX-Large" 
                                        ForeColor="#99CCFF" />
                                    <HeaderStyle Width="200px" />
                                    <ItemStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
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

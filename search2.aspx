<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="search2.aspx.cs" Inherits="search2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <h3>Search: <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></h3>
         
					<ul class="nav nav-pills sort-source" data-sort-id="portfolio" data-option-key="filter">
						<li data-option-value="*" class="active"><a href="#">Show All</a></li>
						<li data-option-value=".websites"><a href="#">Projects</a></li>
						<li data-option-value=".logos"><a href="#">People</a></li>
					</ul>
         
					<hr />
         <div class="row">
             <div class="span9">	

					<div class="row">

						<ul class="portfolio-list sort-destination" data-sort-id="portfolio">
                          <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    	<li class="span3 isotope-item websites">
								<div class="portfolio-item thumbnail">
									<a href="single.aspx?id=<%#Eval("id")%>" class="thumb-info">
										<img alt="" src="img/projects/project.jpg">
										<span class="thumb-info-title">
											<span class="thumb-info-inner"><%#Eval("project_name") %></span>
											<span class="thumb-info-type"><%#Eval("id") %></span>
										</span>
										<span class="thumb-info-action">
											<span title="Universal" href="" class="thumb-info-action-icon"><i class="icon-link"></i></span>
										</span>
									</a>
								&nbsp;&nbsp;</div>
							</li>
                                </ItemTemplate>
                            </asp:Repeater>
                          <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    	<li class="span3 isotope-item logos">
								<div class="portfolio-item thumbnail">
									<a href="single_user.aspx?id=<%#Eval("id")%>" class="thumb-info">
										<img alt="" src="img/projects/project.jpg">
										<span class="thumb-info-title">
											<span class="thumb-info-inner"><%#Eval("name") %></span>
											<span class="thumb-info-type"><%#Eval("id") %></span>
										</span>
										<span class="thumb-info-action">
											<span title="Universal" href="" class="thumb-info-action-icon"><i class="icon-link"></i></span>
										</span>
									</a>
								&nbsp;&nbsp;</div>
							</li>
                                </ItemTemplate>
                            </asp:Repeater>
                           
							
						</ul>

					</div></div>
					</div>
				</div>

</asp:Content>


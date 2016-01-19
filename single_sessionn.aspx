<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="single_sessionn.aspx.cs" Inherits="single_sessionn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="container">


					<div class="row">
                        
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
						<div class="span6">

                            <div class="portfolio-item thumbnail mobile-max-width">
									<a href="#" class="thumb-info">
										<img alt="" src="img/projects/project.jpg">
										<span class="thumb-info-action">
											<span title="Universal" href="#" class="thumb-info-action-icon"><i class="icon-link"></i></span>
										</span>
									</a>
								</div>
						</div>
                        
						<div class="span6">
							<h4><strong><%#Eval("name") %></strong></h4>
							
							<h4 class="pull-top"> </h4>

							<ul class="list icons">
                                 <%# Eval("email").ToString() != "" ? "<li><i class='icon-ok'></i> E-mail: "+ Eval("email")+" </li>" : Eval("email") %>
                                
                                </ItemTemplate>
                        </asp:Repeater>
                             <asp:Repeater ID="Repeater2" runat="server">
                                 
                        <ItemTemplate>
                                 <%# Eval("a").ToString() != "" ? "<li><i class='icon-ok'></i> School Attended / Attending: "+ Eval("a")+" </li>" : Eval("a") %>
					
                                </ItemTemplate>
                        </asp:Repeater>
                             <asp:Repeater ID="Repeater3" runat="server">
                                 
                        <ItemTemplate>
                                 <%# Eval("b").ToString() != "" ? "<li><i class='icon-ok'></i> Educational Affiliation: "+ Eval("b")+" </li>" : Eval("b") %>
					
                                </ItemTemplate>
                        </asp:Repeater>
                             <asp:Repeater ID="Repeater4" runat="server">
                                 
                        <ItemTemplate>
                                 <%# Eval("c").ToString() != "" ? "<li><i class='icon-ok'></i> Roles: "+ Eval("c")+" </li>" : Eval("c") %>
					
                                </ItemTemplate>
                        </asp:Repeater>
                             <asp:Repeater ID="Repeater5" runat="server">
                                 
                        <ItemTemplate>
                                 <%# Eval("d").ToString() != "" ? "<li><i class='icon-ok'></i> Sought from Projects: "+ Eval("d")+" </li>" : Eval("d") %>
					
                                </ItemTemplate>
                        </asp:Repeater>
                                
                                
							</ul>
                            
						</div></div></div>
</asp:Content>


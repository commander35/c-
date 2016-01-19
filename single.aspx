<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="single.aspx.cs" Inherits="single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
				<div class="container">


                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
					<div class="row">
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
							<h4><strong><%#Eval("project_name") %></strong></h4>
							<p><%#Eval("description") %></p>
                           <%# Eval("website").ToString() != "" ? "<a href='" + Eval("website") + "' class='btn btn-primary'>Website</a> <span class='arrow hlb hidden-phone'></span>" : Eval("website") %>
                            
							<h4 class="pull-top"> </h4>

							<ul class="list icons">
								 <%# Eval("link_demo").ToString() != "" ? "<li><i class='icon-ok'></i> Link demo: "+ Eval("link_demo")+" </li>" : Eval("link_demo") %>
                                 <%# Eval("industry").ToString() != "" ? "<li><i class='icon-ok'></i> Industry: "+ Eval("industry")+" </li>" : Eval("industry") %>
                                 <%# Eval("name").ToString() != "" ? "<li><i class='icon-ok'></i> Designation: "+ Eval("name")+" </li>" : Eval("name") %>
                                 <%# Eval("tecnologies").ToString() != "" ? "<li><i class='icon-ok'></i> Tecnology: "+ Eval("tecnologies")+" </li>" : Eval("tecnologies") %>
                                 <%# Eval("p").ToString() != "" ? "<li><i class='icon-ok'></i> Profitability: "+ Eval("p")+" </li>" : Eval("p") %>
                                 <%# Eval("s").ToString() != "" ? "<li><i class='icon-ok'></i> Stage: "+ Eval("s")+" </li>" : Eval("s") %>
                                 <%# Eval("t").ToString() != "" ? "<li><i class='icon-ok'></i> Team Size: "+ Eval("t")+" </li>" : Eval("t") %>
                                 <%# Eval("c").ToString() != "" ? "<li><i class='icon-ok'></i> Capital raised to date : "+ Eval("c")+" </li>" : Eval("c") %>
                                 <%# Eval("cc").ToString() != "" ? "<li><i class='icon-ok'></i> Designation: "+ Eval("cc")+" </li>" : Eval("cc") %>
                                 <%# Eval("a").ToString() != "" ? "<li><i class='icon-ok'></i> Amount Needed: "+ Eval("a")+" </li>" : Eval("a") %>
                                </ItemTemplate>
                        </asp:Repeater>
					
                                
                                
							</ul>

						</div></div></div>
			

</asp:Content>


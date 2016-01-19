<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <h3>Search: <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></h3>
         <a href="advenced.aspx">Advenced Search</a>
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
									<a href="single_session.aspx?id=<%#Eval("id")%>" class="thumb-info">
										<img alt="" src="img/projects/project.jpg">
										<span class="thumb-info-title">
											<span class="thumb-info-inner"><%#Eval("project_name") %></span>
											<span class="thumb-info-type"><%#Eval("id") %></span>
										</span>
										<span class="thumb-info-action">
											<span title="Universal" href="" class="thumb-info-action-icon"><i class="icon-link"></i></span>
										</span>
									</a>
								&nbsp;</div>
							</li>
                                </ItemTemplate>
                            </asp:Repeater>
                          <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    	<li class="span3 isotope-item logos">
								<div class="portfolio-item thumbnail">
									<a href="single_sessionn.aspx?id=<%#Eval("id")%>" class="thumb-info">
										<img alt="" src="img/projects/project.jpg">
										<span class="thumb-info-title">
											<span class="thumb-info-inner"><%#Eval("name") %></span>
											<span class="thumb-info-type"><%#Eval("id") %></span>
										</span>
										<span class="thumb-info-action">
											<span title="Universal" href="" class="thumb-info-action-icon"><i class="icon-link"></i></span>
										</span>
									</a>
								&nbsp;</div>
							</li>
                                </ItemTemplate>
                            </asp:Repeater>
                           
							
						</ul>

					</div></div>
    	    <div class="span3">
							<aside class="sidebar">

								

								<div class="tabs">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#popularPosts" data-toggle="tab"><i class="icon-star"></i> Popular</a></li>
										<li><a href="#recentPosts" data-toggle="tab">Recent</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="popularPosts">
											<ul class="simple-post-list">
												<li>
													<div class="post-image">
														<div class="thumbnail">
															<a href="#">
																<img src="img/projects/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="#">Nullam Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="thumbnail">
															<a href="#">
																<img src="img/projects/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="#">Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="thumbnail">
															<a href="#">
																<img src="img/projects/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="blog-single.html">Odiosters Nullam Vitae</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
											</ul>
										</div>
										<div class="tab-pane" id="recentPosts">
											<ul class="simple-post-list">
												<li>
													<div class="post-image">
														<div class="thumbnail">
															<a href="#">
																<img src="img/projects/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="#">Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="thumbnail">
															<a href="#">
																<img src="img/projects/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="#">Odiosters Nullam Vitae</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
												<li>
													<div class="post-image">
														<div class="thumbnail">
															<a href="#">
																<img src="img/projects/blog-thumb-1.jpg" alt="">
															</a>
														</div>
													</div>
													<div class="post-info">
														<a href="#">Nullam Vitae Nibh Un Odiosters</a>
														<div class="post-meta">
															 Jan 10, 2013
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>

							
							</aside>
						</div>
					</div>
				</div>
</asp:Content>


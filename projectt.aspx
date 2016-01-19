<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="projectt.aspx.cs" Inherits="projectt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    	<div class="row">
						<div class="col-md-12">
							<div class="tabs">
								<ul class="nav nav-tabs nav-justified">
									<li class="active">
										<a href="#recent10" data-toggle="tab" class="text-center">Concept</a>
									</li>
									<li>
										<a href="#recent11" data-toggle="tab" class="text-center">Prototype</a>
									</li>
									<li>
										<a href="#recent12" data-toggle="tab" class="text-center">Validation</a>
									</li>
									<li>
										<a href="#recent13" data-toggle="tab" class="text-center">Model</a>
									</li>
									<li>
										<a href="#recent14" data-toggle="tab" class="text-center">Financial</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="recent10" class="tab-pane active">
										
                                         <div class="row" >
		                                    <div class="span2"> 7</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></div>
                                        </div>
										
                                         <div class="row" >
		                                    <div class="span2"> Strengths in the face of Opportunities and Threats</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></div>
                                        </div>
										
                                         <div class="row" >
		                                    <div class="span2"> Weaknesses in the face of Opportunities and Threats</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox></div>
                                        </div>
		                                    <div class="span2">
                                                <a href="#recent11" data-toggle="tab" >Next</a>
							                </div>
										
									</div>
									<div id="recent11" class="tab-pane">
										
                                         <div class="row" >
		                                    <div class="span2"> İmage</div>
                                            <div class="span4"> <asp:FileUpload ID="FileUpload1" runat="server" /></div>
                                        </div>
                                        
                                         <div class="row" >
		                                    <div class="span2"> link</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox></div>
                                        </div>
		                                    <div class="span2">
                                                <a href="#recent10" data-toggle="tab" >Prev</a>
							                </div>
		                                    <div class="span2">
                                                <a href="#recent12" data-toggle="tab" >Next</a>
							                </div>
										
									</div>
									<div id="recent12" class="tab-pane">
										<p>Market Analysis</p>
                                         <div class="row" >
		                                    <div class="span2"> Target Dimensions</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Market Size and Growth</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Industry Dynamics</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Competitive Landscape</div>
                                         </div>
                                         <div class="row" >
		                                    <div class="span2"> Key Players</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Differentiation Strategy</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Dynamics of your venture</div>
                                          </div>
                                         <div class="row" >
		                                    <div class="span2"> Adoption and Market Share</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Cost to deliver and serve</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox11" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Pricing and Revenue Streams</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox13" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Customer Acquisition Dynamics</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox14" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2"> Growth Management</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox15" runat="server" ></asp:TextBox></div>
                                        </div>
                                         <div class="row" >
		                                    <div class="span2">
                                                <a href="#recent11" data-toggle="tab" >Prev</a>
							                </div>
		                                    <div class="span2">
                                                <a href="#recent13" data-toggle="tab" >Next</a>
							                </div>
                                         </div>
										
									</div>
									<div id="recent13" class="tab-pane">
										<p>Operating Model</p>
										<p>Make the Case</p>
										
                                        <div class="row" >
		                                    <div class="span2"> Vision</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox16" runat="server" ></asp:TextBox></div>
                                        </div>
										
                                        <div class="row" >
		                                    <div class="span2"> Impact measures</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox17" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Business case</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox18" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Revenues/cost savings</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox19" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Sustainability</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox20" runat="server" ></asp:TextBox></div>
                                        </div>
                                        
                                        <div class="row" >
                                          <div class="span2"> Model the viability</div> 
                                            
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Proof of concept</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox21" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Required relationships</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox22" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Tasks</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox23" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Milestones</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox24" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Resources required</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox25" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    
		                                    <div class="span2">
                                                <a href="#recent12" data-toggle="tab" >Prev</a>
							                </div>
		                                    <div class="span2">
                                                <a href="#recent14" data-toggle="tab" >Next</a>
							                </div>
                                        </div>
									</div>
									<div id="recent14" class="tab-pane">
										<p>Cash Flow Model</p>
										
                                        <div class="row" >
		                                    <div class="span2"> Startup Cost</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox26" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Burn Rate </div>
                                            <div class="span4"> <asp:TextBox ID="TextBox27" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Break-even Analysis</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox28" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
                                          <div class="span2"> Growth</div> 
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Base, best, and worst case scenarios</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox29" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Three Year Projected Profit and Loss Statement</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox30" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2"> Scalability</div>
                                            <div class="span4"> <asp:TextBox ID="TextBox31" runat="server" ></asp:TextBox></div>
                                        </div>
                                        <div class="row" >
		                                    <div class="span2">
                                                <a href="#recent13" data-toggle="tab" >Prev</a>
							                </div>
		                                    <div class="span2"> <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" /></div>
                                             </div>
									</div>
								</div>
							</div>
						</div>

							</div>
					</div>
</asp:Content>


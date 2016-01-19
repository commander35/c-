<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="advenced.aspx.cs" Inherits="advenced" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container">
   
			<div role="main" class="main">
				<div id="content" class="content full">
                    <div class="container" >
                        <div class="row">
							<div class="span2">
								<h4 class="short">Type</h4>

							</div>
								<div class="span3">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
								
							</div>
								<div class="span2">
                                   <h4 class="short">Industry</h4>
							</div>
								<div class="span3">
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
							</div>
                            <div class="span1">
                                   <h4 class="short">City</h4>
							</div>
								<div class="span1">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							</div>
                        </div> 
                         <div class="row">
                        
								<div class="span2">
                                   <h4 class="short">Amount Needed</h4>
							</div>
								<div class="span2">
                                   <h4 class="short">
                                       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></h4>
							</div>
                             
								<div class="span6">
							</div>
								<div class="span1">
                                    
                                   <h4 class="short">State</h4></div>
								<div class="span1">
							
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
							</div>
                             
								<div class="span10">
							
							</div>
                             
								<div class="span1">
							
                                   <h4 class="short">Country</h4>
                                   
							</div>
                             
								<div class="span1">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                   
							</div>
                         </div> 
                        
                       


                        
                         <div class="row">
                             
								<div class="span1">
                                   
                                   <h4 class="short">Tecnology</h4>
							</div>
								<div class="span1">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
							</div>

                             </div>
                        
                         <div class="row">
                             <div class="span1">
                                   
                                   <h4 class="short">Keyword</h4>
							</div>
								<div class="span1">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
							</div>

                         </div>
                        
                         
                    </div>   

				</div>   

			</div>
</div>  
</asp:Content>


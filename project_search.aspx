<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project_search.aspx.cs" Inherits="project_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
   
			<div role="main" class="main">
				<div id="content" class="content full">
                    <div class="container" >
                        <div class="row">
							<div class="span2">
								<h4 class="short">Type</h4>

							</div>
								<div class="span3">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Value="Adana"></asp:ListItem>  
                                    </asp:DropDownList>
								
							</div>
								<div class="span2">
                                   <h4 class="short">Industry</h4>
							</div>
								<div class="span3">
                                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
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
							
                                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
							</div>
                             
								<div class="span10">
							
							</div>
                             
								<div class="span1">
							
                                   <h4 class="short">Country</h4>
                                   
							</div>
                             
								<div class="span1">
                                    <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                                   
							</div>
                         </div> 
                        <!--
                         <div class="row">
								<div class="span1">
                                   
                                   <h4 class="short">Skills</h4>
							</div><div class="span11">
                                   
                                  <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal"  CellPadding="6" CellSpacing="2"></asp:CheckBoxList>
							</div>
                              </div> -->


                        
                         <div class="row">
                             
								<div class="span1">
                                   
                                   <h4 class="short">Tecnology</h4>
							</div>
								<div class="span1">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
							</div>

                             </div>
                        
                       
                        <div class="row">
							<div class="span12" style="text-align:center;">
                             <asp:Button ID="Button1" runat="server" class="btn" Text="Search Project" OnClick="Button1_Click" />
							</div>
                        </div> 
                         <div class="row">
                             <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:GridView ID="GridView1"  HeaderText="<% Response.Write DropDownList1.SelectedItem) ; %>" runat="server"></asp:GridView>
                    </div> 
                        
                         
                    </div>   

				</div>   

			</div>
</div>  
    </asp:Content>
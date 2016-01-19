<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
    
                    <div class="container" style="margin-top:35px;">
                        <div class="row" >
							<div class="span3"></div><div class="span2" >
								<h4 class="short" style="text-align:right;">E-mail</h4>

							</div>
								<div class="span3">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="E-Mail" class="asd"></asp:TextBox>
								
							</div></div><div class="row" >
							<div class="span3"></div><div class="span2" >
								<h4 class="short" style="text-align:right;">Password</h4>

							</div>
								<div class="span3">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" class="asd" TextMode="Password"></asp:TextBox>
								
							</div></div><div class="row" >

                                <div class="span12" style="text-align:center;">
                                <asp:Button ID="Button1" runat="server" class="btn" Text="Login" OnClick="Button1_Click"/>

                        </div>
                        </div>  </div>

                        

</asp:Content>


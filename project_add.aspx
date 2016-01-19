<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project_add.aspx.cs" Inherits="project_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container" style="margin-top:35px;">
           
    <div class="row" >
		<h2>Project ADD</h2></div>
    <div class="row" >
		<div class="span2"> Group/Project Name</div>
        <div class="span4"> <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row" >
		<div class="span2"> Project Description</div>
        <div class="span4"> <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row" >
		<div class="span2"> Website</div>
        <div class="span4"> <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox></div>
    </div>
    <div class="row" >
		<div class="span2"> Link to Demo or Prototype</div>
        <div class="span4"> <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox></div>
    </div>
    <div class="row" >
		<div class="span2"> Geographic Base - City</div>
        <div class="span4"> <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox></div>
    </div>
    <div class="row" >
		<div class="span2"> Industry</div>
        <div class="span4"> <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row" >
		<div class="span2"> Designation</div>
        <div class="span4"> <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList></div>
    </div>
    <div class="row" >
		<div class="span2"> Solution</div>
        <div class="span4"> <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList></div>
    </div>
    <div class="row" >
		<div class="span2"> Technologies</div>
        <div class="span4"> <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox7"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row" >
		<div class="span2"> Profitability</div>
        <div class="span4"> <asp:RadioButtonList ID="RadioButtonList2" runat="server"></asp:RadioButtonList></div>
    </div>
    <div class="row" >
		<div class="span2"> Stage</div>
        <div class="span4"> <asp:RadioButtonList ID="RadioButtonList3" runat="server"></asp:RadioButtonList></div>
    </div>
    <div class="row" >
		<div class="span2"> Team Size</div>
        <div class="span4"> <asp:RadioButtonList ID="RadioButtonList4" runat="server"></asp:RadioButtonList></div>
    </div>
    <div class="row" >
		<div class="span2"> Current Funding</div>
        <div class="span4"> <asp:CheckBoxList ID="CheckBoxList2" runat="server"></asp:CheckBoxList></div>
    </div>
    
    <div class="row" >
		<div class="span2"> Capital raised to date</div>
        <div class="span4"> <asp:RadioButtonList ID="RadioButtonList5" runat="server"></asp:RadioButtonList></div>
    </div>
    <div class="row" >
		<div class="span2">Capital sought?</div>
        <div class="span4"> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
    </div>
    <div class="row" >
		<div class="span2">Amount Needed</div>
        <div class="span4"> <asp:RadioButtonList ID="RadioButtonList6" runat="server"></asp:RadioButtonList></div>
    </div>
    <div class="row" >
		<div class="span4">
            <asp:Button ID="Button1" runat="server" Text="Save"  OnClick="Button1_Click" /></div>
    </div>

       </div>
</asp:Content>


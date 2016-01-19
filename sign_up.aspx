<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="sign_up.aspx.cs" Inherits="sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script type = "text/javascript">
          function ValidateModuleList(source, args) {
              var chkListModules = document.getElementById('<%= CheckBoxList1.ClientID %>');
              var chkListinputs = chkListModules.getElementsByTagName("input");
              for (var i = 0; i < chkListinputs.length; i++) {
                  if (chkListinputs[i].checked) {
                      args.IsValid = true;
                      return;
                  }
              }
              args.IsValid = false;
          };
          function ValidateModuleLists(source, args) {
              var chkListModules = document.getElementById('<%= CheckBoxList2.ClientID %>');
              var chkListinputs = chkListModules.getElementsByTagName("input");
              for (var i = 0; i < chkListinputs.length; i++) {
                  if (chkListinputs[i].checked) {
                      args.IsValid = true;
                      return;
                  }
              }
              args.IsValid = false;
          };
          function ValidateModuleListss(source, args) {
              var chkListModules = document.getElementById('<%= CheckBoxList3.ClientID %>');
              var chkListinputs = chkListModules.getElementsByTagName("input");
              for (var i = 0; i < chkListinputs.length; i++) {
                  if (chkListinputs[i].checked) {
                      args.IsValid = true;
                      return;
                  }
              }
              args.IsValid = false;
          };
          function ValidateModuleListsss(source, args) {
              var chkListModules = document.getElementById('<%= CheckBoxList4.ClientID %>');
              var chkListinputs = chkListModules.getElementsByTagName("input");
              for (var i = 0; i < chkListinputs.length; i++) {
                  if (chkListinputs[i].checked) {
                      args.IsValid = true;
                      return;
                  }
              }
              args.IsValid = false;
          };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" >
		<h2>Sign IN</h2></div>

    <div class="row" >
		<div class="span2"> Name</div>
        <div class="span4"> <asp:TextBox ID="TextBox1" runat="server" ControlToValidate="TextBox1"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row" >
    <div class="span2">E-mail</div>
    <div class="span4"> <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></div>
    </div>
    <div class="row" >
    <div class="span2">Password</div>
    <div class="span4"> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Visible="False"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredField"  ControlToValidate="TextBox3"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row" >
    <div class="span2"> School Attended / Attending   <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Required" ClientValidationFunction = "ValidateModuleList"></asp:CustomValidator> </div>
    <div class="span4"> <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList></div>
    </div>
    <div class="row" >
    <div class="span2"> Highest Level of Education </div>
    <div class="span4">
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
    </div>
    <div class="row" >
    <div class="span2"> Year / Expected Year of Graduation </div>
    <div class="span4">
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredField"  ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    </div>
    </div>
    <div class="row" >
    <div class="span2">Educational Affiliation <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Required" ClientValidationFunction = "ValidateModuleLists"></asp:CustomValidator>  </div>
    <div class="span4">
        <asp:CheckBoxList ID="CheckBoxList2" runat="server"></asp:CheckBoxList>
    </div>
    </div>
    <div class="row" >
    <div class="span2">Roles <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Required" ClientValidationFunction = "ValidateModuleListss"></asp:CustomValidator> </div>
    <div class="span4">
        <asp:CheckBoxList ID="CheckBoxList3" runat="server"></asp:CheckBoxList>
    </div>
    </div>
    <div class="row" >
    <div class="span2">Sought from Projects <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Required" ClientValidationFunction = "ValidateModuleListsss"></asp:CustomValidator> </div>
    <div class="span4">
        <asp:CheckBoxList ID="CheckBoxList4" runat="server"></asp:CheckBoxList>
    </div>
    </div>
    <div class="row" >
    <div class="span2">
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /></div>
   
    </div>

</asp:Content>


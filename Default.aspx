<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


       
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


			<div role="main" class="main">
				<div id="content" class="content full">
                    <div class="container">
                        <div class="row">
							<div class="span2">
								<h4 class="short">Project Name</h4>

							</div>
								<div class="span4">
                                    <asp:TextBox ID="TextBox1" runat="server" class="asd"></asp:TextBox>
								
							</div>
								<div class="span2">
                                   <h4 class="short">City</h4>
							</div>
								<div class="span4">
                                 <asp:TextBox ID="TextBox2" runat="server" class="asd"></asp:TextBox>
							</div>

                        </div>
                        <div class="row">
							<div class="span2">
								<h4 class="short">Description</h4>

							</div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
								<div class="span2">
                                   <h4 class="short">State</h4>
							</div>
								<div class="span4">
                                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="asd"></asp:DropDownList>
							</div>

                        </div>
                        <div class="row">
							<div class="span2">

                                <h4 class="short">Tecnology</h4>

					        </div>
                            <div class="span4">  
                             <asp:TextBox ID="TextBox4" runat="server" CssClass="asd"></asp:TextBox>
								
							</div>
							<div class="span2">

                                <h4 class="short">Country</h4>

					        </div>
                            <div class="span4">  
                             <asp:DropDownList ID="DropDownList2" runat="server" CssClass="asd"></asp:DropDownList>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span2">

                                <h4 class="short">Type</h4>

					        </div>
                            <div class="span4">  
                             <asp:DropDownList ID="DropDownList3" runat="server" CssClass="asd"> </asp:DropDownList>
								
							</div>
							<div class="span2">

                                <h4 class="short">İndustry</h4>

					        </div>
                            <div class="span4">  
                              <asp:DropDownList ID="DropDownList4" runat="server" CssClass="asd"></asp:DropDownList>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span3">

                                <h4 class="short">İnvestment needed?</h4>

					        </div>
                            <div class="span3">  
                               <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" CssClass="asd"> <asp:ListItem  Value="0"> No</asp:ListItem>
                  <asp:ListItem Value="1"> Yes </asp:ListItem></asp:DropDownList>
							</div>
							<div class="span2">

                                <h4 class="short"><asp:Label ID="Label1" runat="server" Text="Amount Neeeded" Visible="False"></asp:Label></h4>

					        </div>
                            <div class="span4">  
                               <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
							</div>
                        </div><!--
                        <div class="row">
							<div class="span6">
                               <h4 class="short"> Upload your business plan/proposal document</h4>
					        </div>
                            <div class="span6">  
                               <asp:FileUpload ID="FileUpload1" runat="server" class="btn"/>
							</div>
                        </div>-->
                        <div class="row">
							<div class="span3">
                              <h4 class="short"> Member profiles required</h4>
					        </div>
                            <div class="span9">  
                               <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal"  CellPadding="6" CellSpacing="2"></asp:CheckBoxList>
							</div>
                        </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Website</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
							<div class="span2">
                              <h4 class="short"> Link to Demo or Prototype</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox7" runat="server"  class="asd"></asp:TextBox>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Designation</h4>
					        </div>
                            <div class="span4">  
                                <asp:RadioButtonList ID="RadioButtonList1"  runat="server"></asp:RadioButtonList>
							</div>
							<div class="span2">
                              <h4 class="short">Solution </h4>
					        </div>
                            <div class="span4">  
                               <asp:CheckBoxList ID="CheckBoxList2" runat="server" ></asp:CheckBoxList>
							</div>
                        </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Profitability</h4>
					        </div>
                            <div class="span4">  
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server"></asp:RadioButtonList>
							</div>
							<div class="span2">
                              <h4 class="short">Stage</h4>
					        </div>
                            <div class="span4">  
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server"></asp:RadioButtonList>
							</div>
                        </div>
                        
                        
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Revnue Model</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
							<div class="span2">
                              <h4 class="short"> Price&Pricing Strategy</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                    </div>
                        
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Cost to Produce/Deliver</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
							<div class="span2">
                              <h4 class="short"> Cost to Acquire Customer</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                    </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Startup Costs</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                            
							<div class="span2">
                              <h4 class="short"> Pain Point </h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short">Target</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                            
							<div class="span2">
                              <h4 class="short"> Need:Latent or Existing</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox15" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short"> Functionality</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                            
							<div class="span2">
                              <h4 class="short"> İntial Product/Service Offered </h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span2">
                              <h4 class="short">Product/Service Alignment with Value Proposition</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                            
							<div class="span2">
                              <h4 class="short"> Product Pipeline</h4>
					        </div>
								<div class="span4">  
                                    
                                    <asp:TextBox ID="TextBox19" runat="server" TextMode="MultiLine" class="asd"></asp:TextBox>
								
							</div>
                        </div>
                        <div class="row">
							<div class="span12" style="text-align:center;">
                             <asp:Button ID="Button1" runat="server" class="btn" Text="Create your project" OnClick="Button1_Click" />
							</div>
                        </div>


				        </div>
					</div>
				</div>
			

		
    </asp:Content>
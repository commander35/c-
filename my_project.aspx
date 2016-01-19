<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="my_project.aspx.cs" Inherits="my_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
    <h2 class="short"> My Project </h2>
           <div class="table-responsive">
          <table class="table" id="table2">
              <thead>
                 <tr>
                    <th>Project Name</th>
                    <th>Description</th>
                    <th>Web Site</th>
                    <th>Link to Demo or Prototype</th>
                    <th>Industry</th>
                 </tr>
              </thead>
              <tbody>
               <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>

                    <tr class="odd gradeX">
                    <td><%#Eval("project_name") %></td>
                    <td><%#Eval("description") %></td>
                    <td><%#Eval("website") %></td>
                    <td class="center"><%#Eval("link_demo") %></td>
                    <td class="center"><%#Eval("industry") %></td>
                 </tr>

                 </ItemTemplate></asp:Repeater>
               
                 
              </tbody>
           </table>
          </div><!-- table-responsive -->
          
</div>  
    </asp:Content>
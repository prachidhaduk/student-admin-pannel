<%@ Page Title="" Language="C#" Theme="Skin1" MasterPageFile="~/student_pannelMaster.Master" AutoEventWireup="true" CodeBehind="student_add.aspx.cs" Inherits="student_admin_pannel.student_add" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Student Add
    </h1>
    <table class="auto-style1" width="100%" >
      <tr>
            <td>
                <asp:Label ID="lbl_nm" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_nm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_nm" ErrorMessage="Name Do Not be Empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_mobile" runat="server" Text="Mobile No."></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile no is required" ControlToValidate="txt_mobile"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mobile" ErrorMessage="Enter valid Mobile No." ValidationExpression="^[6-9][0-9]{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_course" runat="server" Text="Course"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drop_course" runat="server" DataSourceID="SqlDataSource1" DataTextField="crs_name" DataValueField="crs_name" EnableTheming="True" >
                    <asp:ListItem></asp:ListItem>        
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [crs_name] FROM [course]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr> 
            <td colspan="2" align="center">
                <asp:Button ID="btnStudentAdd" runat="server" Text="Add Student" OnClick="btnStudentAdd_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

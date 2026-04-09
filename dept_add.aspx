<%@ Page Title="" Language="C#" Theme="Skin1" MasterPageFile="~/student_pannelMaster.Master" AutoEventWireup="true" CodeBehind="dept_add.aspx.cs" Inherits="student_admin_pannel.dept_add" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>
        Department Add
    </h1>

<table class="auto-style1" width="100%">   
    <tr>
        <td>
            <asp:Label ID="lbl_dept" runat="server" Text="Department Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_dept" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_dept" ErrorMessage="Department name is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnDeptAdd" runat="server" Text="Add Department" OnClick="btnDeptAdd_Click" />
        </td>
    </tr>
</table>

</asp:Content>

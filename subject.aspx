<%@ Page Title="" Language="C#" Theme="Skin1" MasterPageFile="~/student_pannelMaster.Master" AutoEventWireup="true" CodeBehind="subject.aspx.cs" Inherits="student_admin_pannel.subject" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>
        Subject Add
    </h1>
    
<table class="auto-style1" width="100%">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lbl_crs_nm" runat="server" Text="Course Name"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:DropDownList ID="drop_crs" runat="server" DataSourceID="SqlDataSource2" DataTextField="crs_name" DataValueField="crs_name">

            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [crs_name] FROM [course]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lbl_sub_nm" runat="server" Text="subject Name"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txt_sub_nm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_sub_nm" ErrorMessage="Subject Name is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lbl_credit" runat="server" Text="Credit"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txt_credit" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_credit" ErrorMessage="Credit can not be blank"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnSubjectAdd" runat="server" Text="Add Subject" OnClick="btnSubjectAdd_Click"/>
        </td>
    </tr>
</table>
</asp:Content>

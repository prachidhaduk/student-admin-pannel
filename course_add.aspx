<%@ Page Title="" Language="C#" Theme="Skin1" MasterPageFile="~/student_pannelMaster.Master" AutoEventWireup="true" CodeBehind="course_add.aspx.cs" Inherits="student_admin_pannel.course_add" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Course Add
    </h1>
    <table class="auto-style1" width="100%">
        <tr>
            <td>
                <asp:Label ID="lbl_course_nm" runat="server" Text="Course Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_course_nm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_course_nm" ErrorMessage="Course Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_duration" runat="server" Text="Duration"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_duration" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_duration" ErrorMessage="Duretion Can not be Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnCourseAdd" runat="server" Text="Add Course" OnClick="btnCourseAdd_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

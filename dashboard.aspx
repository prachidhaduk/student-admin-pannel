<%@ Page Title="" Language="C#" Theme="Skin1" MasterPageFile="~/student_pannelMaster.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="student_admin_pannel.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*        <Columns>
    <asp:BoundField DataField="Id" HeaderText="ID" />
    <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" ControlStyle-CssClass="alert-danger" />
</Columns>*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Dashboard
    </h1>
    <table width="100%">
        <tr>
            <td>
                <asp:Button ID="btnDispStud" runat="server" Text="Student Data" OnClick="btnDispStud_Click" />
            </td>
            <td>
                <asp:Button ID="btnDispCourse" runat="server" Text="Course Data" OnClick="btnDispCourse_Click" />
            </td>
            <td>
                <asp:Button ID="btnDispSub" runat="server" Text="Subject Data" OnClick="btnDispSub_Click" />
            </td>
            <td>
                <asp:Button ID="btnDispDept" runat="server" Text="Department Data" OnClick="btnDispDept_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" width="100%" align="center">
                <asp:GridView ID="GridViewStudent" runat="server"></asp:GridView>
            
                <asp:GridView ID="GridViewCourse" runat="server"></asp:GridView>
            
                <asp:GridView ID="GridViewSub" runat="server"></asp:GridView>
           
                <asp:GridView ID="GridViewDept" runat="server"></asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

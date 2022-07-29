<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Asp_WebForm_Crud.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ekle
    </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10px">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Adı : "></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Soyadı : "></asp:Label>
                <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label3" runat="server" Text="Şehri : "></asp:Label>
                 <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Maaşı : "></asp:Label>
                <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control"></asp:TextBox>
            </div>   
            <div class="form-group">
                <asp:Button ID="btnCreate" runat="server" Text="Ekle" CssClass ="btn btn-info" OnClick="btnCreate_Click"/>
            </div>
        </div>
    </form>
</body>
</html>

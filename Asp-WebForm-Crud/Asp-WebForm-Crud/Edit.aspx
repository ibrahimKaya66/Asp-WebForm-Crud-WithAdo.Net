<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Asp_WebForm_Crud.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Güncelle</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10px">
            <div class="form-group">
                <div style="width:75%;float:left">
                    <asp:Label ID="Label5" runat="server" Text="Id : "></asp:Label>
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control">
                    </asp:TextBox>
                </div>
                <div style="width:25%;float:left">
                    <asp:Button ID="btnGet" runat="server" Text="Getir" CssClass="btn btn-primary" style="margin-top:23px" OnClick="btnGet_Click"/>
                </div>               
            </div>
            <br />
            <br />
            <br />
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
                <asp:Button ID="btnUpdate" runat="server" Text="Kaydet" CssClass ="btn btn-info" OnClick="btnUpdate_Click"/>
            </div>
        </div>
    </form>
</body>
</html>

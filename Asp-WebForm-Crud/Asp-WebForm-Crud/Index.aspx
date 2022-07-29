<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Asp_WebForm_Crud.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Müşteri Listesi</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <h3 style="float: left">Liste</h3>
        </div>       
        <br />
        <br />
        <div class="container">
            <h3 style="float: left">
                <asp:Button ID="btnDelete" runat="server" Text="Sil" CssClass="btn btn-danger" OnClick="btnDelete_Click"/>
            </h3>
            <h3 style="float: right">
                <asp:Button ID="btnSearch" runat="server" Text="Ara" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
            </h3>
            <h3 style="float: right">
                <asp:TextBox ID="txtSearch" runat="server" placeHolder="Ara" CssClass="form-control">
                </asp:TextBox>
            </h3>
        </div>

        <div class="container">
            <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Seçim" Text="Seç" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
       </div>
        <div class="container">
            <div style="float:left">
                 <asp:HyperLink ID="HyperLinkCreate" runat="server" CssClass="btn btn-info" NavigateUrl="~/Create.aspx">Ekle</asp:HyperLink>
            </div>
            <div style="float:right">
                <asp:HyperLink ID="HyperLinkUpdate" runat="server" CssClass="btn btn-info" NavigateUrl="~/Edit.aspx">Güncelle</asp:HyperLink>
            </div>
           
            
        </div>
            
        
    </form>
</body>
</html>

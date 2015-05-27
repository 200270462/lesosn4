<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="lesson4._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Tip Calculator</h1>
        <div>
            <label for="txtAmount">Amount:</label>
            <asp:TextBox ID="txtAmount" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtAmount" Display="Dynamic" CssClass=" label label-danger"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Number grater than 0" ControlToValidate="txtAmount" Type="Double" MinimumValue="0.01" MaximumValue="1000" Display="Dynamic" CssClass="lable label-danger"></asp:RangeValidator>
        </div>
        <div>
            <label for="ddlPercent">Tip%:</label>
            <asp:DropDownList ID="ddlPercent" runat="server">
                <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
                <asp:ListItem Value=".15" Text="15%" Selected="True"></asp:ListItem>
                <asp:ListItem Value=".2" Text="20%"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnCalculate" CssClass="btn-primary" runat="server" Text="Calculate Tip" OnClick="btnCalculate_Click" />
        <asp:Panel ID="pnlResults" CssClass="panle panel-primary" runat="server" Visible="false">
            <div class="panel-heading">
                <h4>Totals</h4>
            </div>
            <div>
                <label for="lblTip">Tip Amount:</label>
                <asp:Label ID="lblTip" runat="server" />
            </div>
            <div>
                <label for="lblTotal">Total:</label>
                <asp:Label ID="lblTotal" runat="server" />
            </div>
        </asp:Panel>
    </form>
</body>
</html>

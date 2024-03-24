<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DB_Project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FunFlix-Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <link rel="icon" href="pictures/newlogo2.png" type="image/icon type">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
     <div class="modal" id="modal">

        <form class="login-form" action="#" runat="server">
            <asp:TextBox ID="userDet" placeholder="Enter Email" required="" runat="server"></asp:TextBox>
            <asp:TextBox ID="Password" placeholder="Enter Password" required="" TextMode="Password" runat="server"></asp:TextBox>
            <asp:Button class="login-btn" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </form>
    </div>
</body>
</html>

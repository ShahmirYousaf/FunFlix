<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="DB_Project.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>FunFlix-Login/SignUp</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>


    <link rel="icon" href="pictures/newlogo2.png" type="image/icon type"/>
    <link rel="stylesheet" href="css/sinup.css"/>

    <!-- Adding link of logos of social media -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
</head>
<body>
     <div class="sinup" id="sinup">

        <h1 class="sinup-h">Create New Account</h1>
        <form class="sinup-form" action="#" runat="server">
            <div class="fie-1">
                <asp:TextBox ID="Name" placeholder="Enter Name" required="" runat="server"></asp:TextBox>
                <asp:TextBox ID="SignUpPass" placeholder="Enter Passowrd"  MinLength="9" TextMode="Password" required="" runat="server"></asp:TextBox>
                <asp:TextBox ID="City" placeholder="Enter City" required="" runat="server"></asp:TextBox>
                <asp:TextBox ID="Number" placeholder="Enter Mobile Number" TextMode="Phone" required="" runat="server"></asp:TextBox>


                <asp:DropDownList CssClass="input-package" name="input-package" ID="package" runat="server">
                    <asp:ListItem Text="-Select Package-" Value="" />
                    <asp:ListItem Text="Basic (4.99 USD)" Value="Basic" />
                    <asp:ListItem Text="Premium (7.99 USD)" Value="Premium" />
                </asp:DropDownList>
            </div>

            <div class="fie-2">
                <asp:TextBox ID="Email" placeholder="Enter Email" TextMode="Email" required="" runat="server"></asp:TextBox>
                <asp:TextBox ID="DOB" placeholder="Enter Date of Birth" TextMode="Date" required="" runat="server"></asp:TextBox>
                <asp:TextBox ID="Country" placeholder="Enter Country" required="" runat="server"></asp:TextBox>


                <asp:DropDownList CssClass="gender" name="gender" ID="gender" runat="server">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>

            </div>

            <div class="sinup1">
                <h1>Payment</h1>

                <div class="fie-3">

                    <asp:DropDownList CssClass="input-card" name="input-card" ID="cardtype" runat="server">
                        <asp:ListItem Text="-Select Card Type-" Value="" />
                        <asp:ListItem Text="Visa Card" Value="Visa Card" />
                        <asp:ListItem Text="Master Card" Value="Master Card" />
                    </asp:DropDownList>

                    <asp:TextBox name="credit-number" TextMode="Number" MinLength="16" MaxLength="16" pattern="\d*" CssClass="creditnumber" ID="creditnumber" placeholder="Card Number" required="" runat="server"></asp:TextBox>
                    <asp:TextBox name="creditcvc" CssClass="cvc" TextMode="Number" MaxLength="3" pattern="\d*" ID="cvc" placeholder="CVC" required="" runat="server"></asp:TextBox>

                </div>

                <div class="fie-4">
                    <asp:TextBox CssClass="cardOwner" ID="cardOwner" placeholder="Enter Card Holder Name" required="" runat="server"></asp:TextBox>

                    <asp:TextBox CssClass="cardExpiry" name="credit-expires" ID="cardExpiry" MaxLength="5" placeholder="MM / YY" required="" runat="server"></asp:TextBox>

                </div>
            </div>
            <asp:Button CssClass="sinup-btn" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"/>

        </form>
    </div>
</body>
</html>

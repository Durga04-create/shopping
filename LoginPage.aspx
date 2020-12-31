<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Shopping_Cart_Application.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME TO SHOPPING</title>
    <style>
        body {
  font-family:Times New Roman;
  font-size: 20px;
  padding: 10px;
  
}
        .button1 {
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid  #FF69B4;
}

.button1:hover {
  background-color:#FF69B4;
  color: white;
}
        
</style>  
</head>
<body style="background-image:url(image/bg.png);width:auto;height:auto;" >

    
    <form id="form1" runat="server">
    <div >
        <center>
            <br />
            <asp:Label ID="Label1" runat="server" Text="WELCOME TO SHOPPING" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label>
            <br />
            <br />
        </center>
        <center>
            <table style="width:auto;height:300px">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="UserId:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter the userid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Already Customer?LOGIN Here" CssClass="button1" />                     
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserRegistrationPage.aspx">New Registration</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forget.aspx"> |Forget Password?</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>

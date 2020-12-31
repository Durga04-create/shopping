<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistrationPage.aspx.cs" Inherits="Shopping_Cart_Application.UserRegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME To REGISTRATION</title>
    <script src="JavaScript1.js" type="text/javascript">    
</script>
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
<body style="background-image:url(image/bg.png);width:auto;height:auto;">
    <form id="form1" runat="server">
    <div>
        <center>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sign up now" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label>
            <br />
            <br />
        </center>
        <center>
            <table style="width:auto;height:400px">
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="UserId:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Username:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Conform Password:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="E-Mail Address:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Mobile Number:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" style="text-align:center">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" OnClientClick="return uservalid();"  Font-Names="Times New Roman" CssClass="button1"></asp:Button>
                        </td>
                        <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Back to Login</asp:HyperLink>
                        <br />
                    </td>
                </tr>

            </table>
            </center>
    </div>
    </form>
</body>
</html>

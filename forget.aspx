<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="Shopping_Cart_Application.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgetten?</title>
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
            <asp:Label ID="Label1" runat="server" Text="Forgetten? No Problem.." Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label>
            <br />
            <br />
        </center>
        <center>
                    <table style="width:auto;height:200px">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter your Userid:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Get your password" CssClass="button1" OnClick="Button1_Click"></asp:Button>

                    <br />

                </td>
            </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Your Password is:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Back to Login</asp:HyperLink>
                </td>
                        </tr>
            </table>
            </center>
    
    </div>
    </form>
</body>
</html>

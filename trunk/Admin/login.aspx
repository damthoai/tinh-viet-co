<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login system</title>
<style type="text/css">
    body
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 12px;
        background: #fbfbfb;
    }
    #content
    {
        width: 300px;
        margin-left: auto;
        margin-right: auto;
    }
    .fromlogin
    {
        width: 319px;
        height: 216px;
        background-image: url(../assets/imgs/bg_login.gif);
        background-repeat: no-repeat;
        float: left;
    }
    .tencty
    {
        float: left;
        margin-top: 120px;
    }
    .user
    {
        float: left;
        margin-top: 48px;
        margin-left: 28px;
    }
    .usernametext
    {
        width: 257px;
        height: 29px;
        border: 0px;
        background: #fbfbfb;
    }
    .pass
    {
        float: left;
        margin-top: 28px;
        margin-left: 28px;
    }
    .passtext
    {
        width: 257px;
        height: 29px;
        border: 0px;
        background: #fbfbfb;
    }
    .check
    {
        float: left;
        clear: both;
        margin-left: 25px;
    }
    .login
    {
        float: right;
        margin-left: 160px;
    }
    .login #login
    {
        width: 72px;
        height: 30px;
        background-image: url(../assets/imgs/login.jpg);
        border: 0px;
        position: relative;
        z-index: 10000;
    }
    
    .btnlogin
    {
        width: 72px;
        height: 30px;
        background-image: url(../assets/imgs/login.jpg);
        border: 0px;
        position: relative;
        z-index: 10000;
    }
</style>
</head>
<body>
<form id="form1" runat="server">
<div id="content">
<div class="tencty">
<img src="../assets/imgs/tencty.jpg" /></div>
<div class="fromlogin">
<p class="user">
<asp:TextBox runat="server" ID="txtUsername" CssClass="usernametext"></asp:TextBox></p>
<p class="pass">
<asp:TextBox runat="server" ID="txtPasswork" TextMode="Password" CssClass="passtext"></asp:TextBox>
</p>
<p class="check">
<input type="checkbox" checked="checked" />
<span class="login">
<asp:Button runat="server" ID="btnLogin" Text="" CssClass="btnlogin" 
        onclick="btnLogin_Click" />
</span>
</p>
<br />
<asp:Label runat="server" ID="lblerror" ForeColor="Red" Font-Bold="true"></asp:Label>
</div>
</div>
</form>
</body>
</html>

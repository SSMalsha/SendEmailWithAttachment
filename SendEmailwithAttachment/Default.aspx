<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Send email to upload attachment</h1><br /><br />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="To"></asp:Label><br />
        <asp:TextBox ID="txttoEmail" runat="server" Text=""></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Upload Attachment"></asp:Label><br />
        <asp:FileUpload ID="FileUpload1" runat="server" Text=""></asp:FileUpload><br /><br />
        <%--<asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label><br />
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox><br /><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label><br />
        <asp:TextBox ID="txtMessage" runat="server" TextMode="Multiline"></asp:TextBox><br /><br />--%>
        <asp:Button ID="SbtBtn" runat="server" Text="Submit" OnClick="SbtBtn_Click"/>
    </div>
    </form>
</body>
</html>

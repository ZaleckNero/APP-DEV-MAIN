<%@ Page Title="" Language="C#" MasterPageFile="~/UserSetupInterface.Master" AutoEventWireup="true" CodeBehind="LoginTab.aspx.cs" Inherits="CaseStudy.LoginTab" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" 
    Style="display: flex; flex-direction: column; align-items: center; justify-content: center; margin: 90px auto 0 auto; width: 500px; height: 500px; background-color: #f0f0f0;">

    <!-- Login Page Label -->
    <asp:Label ID="Label1" runat="server" Text="Account login" 
        Style="font-size:36px; display:block; text-shadow: 0 0 4px white; margin-top: 10px; align-self: center;" />

    <!-- Username Row -->
    <div Style="display: flex; align-items: center; margin: 20px 0;">
    <asp:Label ID="Label2" runat="server" Text="Username:" 
        Style="font-size:25px; text-shadow: 0 0 4px white; width: 150px; text-align: center;"/>
    <asp:TextBox ID="TextBox1" runat="server" Width="250px" 
        Style="resize: both; overflow: auto; height: 30px; min-width: 100px;" />
    </div>

    <!-- Password Row -->
    <div Style="display: flex; align-items: center; margin: 20px 0;">
    <asp:Label ID="Label3" runat="server" Text="Password:" 
        Style="font-size:25px; text-shadow: 0 0 4px white; width: 150px; text-align: center;"/>
    <asp:TextBox ID="TextBox2" runat="server" Width="250px" TextMode="Password" 
        Style="resize: both; overflow: auto; height: 30px; min-width: 100px;" />
    </div>

    <asp:Button ID="Button1" runat="server" Text="Login" 
    Style="resize: both; overflow: auto; height: 35px; width: 100px; min-width: 50px; font-size: 20px;" BackColor="#CCFF99" />

    </asp:Panel>

</asp:Content>

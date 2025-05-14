<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface.Master" AutoEventWireup="true" CodeBehind="UserOrderHistory.aspx.cs" Inherits="CaseStudy.UserOrderHistory" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" 
        Style="display: flex; flex-direction: column; align-items: center; justify-content: center; margin: 90px auto 0 auto; width: 700px; height: 500px; background-color: #f0f0f0;">

        <asp:Label ID="Label1" runat="server" Text="User Order History Chart" Font-Size="X-Large" Font-Bold="true" />

        <asp:Chart ID="OrderChart" runat="server" Width="600px" Height="400px">
            <Series>
                <asp:Series Name="Orders" ChartType="Column" XValueMember="Product" YValueMembers="Quantity">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>

    </asp:Panel>

</asp:Content>

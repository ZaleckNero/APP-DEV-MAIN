<%@ Page Title="User Home Page" Language="C#" MasterPageFile="~/UserInterface.Master" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="CaseStudy.UserHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .section-title {
            font-size: 24px;
            margin-bottom: 10px;
            text-shadow: 0 0 5px white;
            color: #333;
        }
        .grid {
            width: 100%;
            border-collapse: collapse;
        }
        .grid th, .grid td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: center;
        }
        .grid th {
            background-color: #ddd;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" 
        Style="margin: 30px auto; width: 90%; max-width: 900px; background-color: #f0f0f0; padding: 20px; border-radius: 10px;">

        <!-- Product Market -->
        <asp:Label ID="LabelMarket" runat="server" Text="Product Market" CssClass="section-title" />
        <asp:GridView ID="GridViewMarket" runat="server" AutoGenerateColumns="false" CssClass="grid" OnSelectedIndexChanged="GridViewMarket_SelectedIndexChanged">
            <Columns>
                <asp:BoundField HeaderText="Product ID" DataField="ProductId" />
                <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
                <asp:BoundField HeaderText="Price" DataField="Price" DataFormatString="{0:C}" />
                <asp:BoundField HeaderText="Stocks" DataField="Stocks" />
                <asp:BoundField HeaderText="SRP" DataField="SRP" DataFormatString="{0:C}" />
            </Columns>
        </asp:GridView>

        <br />

        <!-- Order History -->
        <asp:Label ID="LabelHistory" runat="server" Text="Order History" CssClass="section-title" />
        <asp:GridView ID="GridViewHistory" runat="server" AutoGenerateColumns="false" CssClass="grid" OnSelectedIndexChanged="GridViewHistory_SelectedIndexChanged">
            <Columns>
                <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
                <asp:BoundField HeaderText="Price" DataField="Price" DataFormatString="{0:C}" />
                <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
                <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:C}" />
                <asp:BoundField HeaderText="VAT (10%)" DataField="VAT" DataFormatString="{0:C}" />
                <asp:BoundField HeaderText="Discount" DataField="Discount" DataFormatString="{0:C}" />
                <asp:BoundField HeaderText="Total Purchase" DataField="TotalPurchase" DataFormatString="{0:C}" />
            </Columns>
        </asp:GridView>

    </asp:Panel>

</asp:Content>

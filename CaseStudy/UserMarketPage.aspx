<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface.Master" AutoEventWireup="true" CodeBehind="UserMarketPage.aspx.cs" Inherits="CaseStudy.UserMarketPage" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .market-header {
            text-align: center;
            font-size: 24px;
            margin-top: 20px;
            font-weight: bold;
        }

        .market-grid {
            width: 100%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffcc00;
        }

        .market-grid th {
            background-color: #ffa500;
            color: black;
            padding: 10px;
        }

        .market-grid td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ffa500;
        }

        .market-grid button {
            background-color: orange;
            border: none;
            padding: 5px 10px;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .market-grid button:hover {
            background-color: darkorange;
        }

        .message {
            text-align: center;
            font-weight: bold;
            color: green;
        }
    </style>

    <div class="market-header">MARKET CATALOG</div>

    <asp:Label ID="lblMessage" runat="server" CssClass="message" />

    <asp:GridView ID="gvMarket" runat="server" AutoGenerateColumns="False" OnRowCommand="gvMarket_RowCommand" CssClass="market-grid">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="PRODUCT NAME" />
            <asp:TemplateField HeaderText="VIEW">
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price", "₱{0:N2}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DETAILS">
                <ItemTemplate>
                    <asp:Button ID="btnBuy" runat="server" Text="BUY" CommandName="BuyNow" CommandArgument='<%# Container.DataItemIndex %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

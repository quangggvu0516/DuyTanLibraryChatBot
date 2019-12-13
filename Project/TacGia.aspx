<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TacGia.aspx.cs" Inherits="TacGia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" style="margin-left:35px" CellSpacing="110" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <div class="auto-style5">
                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("TacGia") %>' Height ="280px" BorderStyle="Solid" ImageAlign="Middle" ImageUrl='<%# "~/images/tacgia/" + Eval("HinhTacGia") %>' OnClick="ImageButton1_Click" Width="200px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


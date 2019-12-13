<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChitietTacGia.aspx.cs" Inherits="ChitietTacGia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 52px;
        }
        .auto-style15 {
            height: 24px;
            width: 142px;
        }
        .auto-style12 {
            height: 24px;
            width: 4px;
        }
        .auto-style16 {
            height: 25px;
            width: 142px;
        }
        .auto-style13 {
            height: 25px;
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="id_sanpham"  RepeatDirection="Horizontal" RepeatLayout="Flow">
        <ItemTemplate>
           
           

            <table class="auto-styleHinh1" style="width:100%;margin-left:200px;" >
                <tr>
                     <td rowspan="9" class="auto-styleHinh1">
                        <asp:Image ID="Hinh" runat="server" ImageUrl='<%# "~/images/"+Eval("Hinh") %>' Width="400px" Height="600px" BorderStyle="Solid" />

                           <td class="auto-styleTenSach1" style="width:30%; font-size: large; font-weight: bold;">Tên sách:</td>
                            <td class="auto-styleTenSach2"> 
                        <asp:Label ID="lblTenSach" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="true" ForeColor="#CC0000" Font-Size="Larger"></asp:Label>
                   </td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-styleTenTacGia1" style="width:30%; font-size: large; font-weight: bold;">Tác giả:</td>
                    <td class="auto-styleTenTacGia2"> 
                        <asp:Label ID="lblTenTacGia" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label>

                    </td>
                </tr>

                <tr>
                      <td class="auto-styleNhaXuatBan1" style="width:30%; font-size: large; font-weight: bold;">Nhà xuất bản:</td>
                    <td class="auto-styleNhaXuatBan2"> 
                        <asp:Label ID="lblNhaXuatBan" runat="server" Text='<%# Eval("NhaXuatBan") %>'></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-styleNamXuatBan1" style="width:30%; font-size: large; font-weight: bold;">Năm xuất bản:</td>
                    <td class="auto-styleNamXuatBan2"> 
                        <asp:Label ID="lblNamXuatban" runat="server" Text='<%# Eval("NamXuatBan") %>'></asp:Label>

                    </td>
                </tr>

                <tr>
                      <td class="auto-styleSoTrang1" style="width:30%; font-size: large; font-weight: bold;">Số Trang:</td>
                    <td class="auto-styleSoTrang2"> 
                        <asp:Label ID="lblSoTrang" runat="server" Text='<%# Eval("SoTrang") %>'></asp:Label>

                    </td>
                </tr>

                <tr>
                     <td class="auto-styleNgonNgu1" style="width:30%; font-size: large; font-weight: bold;">Ngôn ngữ:</td>
                    <td class="auto-styleNgonNgu2"> 
                        <asp:Label ID="lblNgonNgu" runat="server" Text='<%# Eval("NgonNgu") %>'></asp:Label>

                    </td>
                        
                </tr>

                 <tr>
                   
                    <td class="auto-styleSoLuong1" style="font-size: large; font-weight: bold">Số lượng</td>
                    <td class="auto-styleSoLuong2">
                        <asp:DropDownList ID="ddlSoLuong" runat="server" AutoPostBack="True">
                            <asp:ListItem Selected="True" Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                        </asp:DropDownList>
                      
                    </td>
                </tr>

                <tr>
                   
                     <td class="auto-styleMota1" style="width:30%; font-weight: bold; font-size: large;" >Giới thiệu:</td>
                    <td class="auto-styleMota2" style="width:70%"> 
                        <asp:Label ID="lblGioiThieu" runat="server" Text='<%# Eval("MoTa") %>' Font-Size="Medium" Font-Italic="true" ForeColor="#006600" BorderStyle="None"></asp:Label>

                    </td>
                        
                </tr>
               
                  <tr>
                     <td class="auto-styleGia1" style="width:30%; font-size: large; font-weight: bold;">Giá:</td>
                    <td class="auto-styleGia2"> 
                        <asp:Label ID="lblGia" runat="server" Text='<%# Eval("GiaSP") %>'></asp:Label>
                        <asp:Label ID="lblVND" runat="server" Text="Label">vnd</asp:Label>
                    </td>
                        
                </tr>
                
                <tr>

                    <td class="auto-styleGioSach">
                        <asp:Button ID="ButtonThueSach" runat="server" Text="Thuê sách"  CommandArgument='<%# Eval("id_sanpham") %>' OnClick="ButtonThueSach_Click" Font-Size="Larger" />
                        <asp:Button ID="ButtonGioSach"  runat="server" Text="Giỏ sách" OnClick="ButtonGioSach_Click" Font-size="Larger"/>
                       
                    </td>
                   
                </tr>
               </table>
        </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>

</asp:Content>


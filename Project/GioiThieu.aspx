<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-styleGioiThieu" style="margin-left:150px;margin-top:30px">
        <tr>
            <td class="tongQuan">
                <asp:Label ID="lblTongQuan" runat="server" Text="Tổng quan về thư viện Duy Tân" Font-Bold="true" Font-Italic="true" Font-Size="30px" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td rowspan="3" class="youTube"> 
                <iframe width="560" height="315" src="https://www.youtube.com/embed/-YWWFtMM6vI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </td>
        </tr>
        <tr>
            <td>
                <p class="titl" style="text-align: center">
                    ❋Thư viện Đại học Duy Tân được thành lập vào năm 1995 theo Quyết định số 50/QĐ-ĐHDT
                    của Chủ tịch Hội đồng Quản trị & Ban Giám Hiệu ngày 16/09/1995.
                </p>
            </td>
        </tr>
        <tr>
            <td>
             <p class="title" style="text-align: center">
                    ❋Thư viện Đại học Duy Tân được thành lập vào năm 1995 theo Quyết định số 50/QĐ-ĐHDT
                    của Chủ tịch Hội đồng Quản trị & Ban Giám Hiệu ngày 16/09/1995.
                </p>
            </td>
        </tr>

        
    </table>
  
 
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="ASP.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
        <div class="row w-50 m-auto border border-primary">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12 text-center bg-success">
                        <h2 style="color: white">ĐƠN ĐẶT HÀNG </h2>
                    </div>
                </div>

                <div class="row mb-2 mt-2">
                    <div class="col-md-3">
                        Khách hàng
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ForeColor="#cc3300"
                            ErrorMessage="Chưa nhập họ tên" Text="(*)" ControlToValidate="txtHoTen" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-3">
                        Địa chỉ
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-3">
                        Mã số thuế
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtMST" runat="server" CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvMST" runat="server" ForeColor="#cc3300"
                            ErrorMessage="Chưa nhập mã số thuế" Text="(*)" ControlToValidate="txtMST" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-md-6 border-top border-right border-bottom border-primary">
                        Chọn các loại bánh sau:
                     <br />
                        <asp:DropDownList ID="ddlBanh" runat="server" CssClass="form-control">
                        </asp:DropDownList>

                        <br />
                        <div class="form-inline">
                            Số lượng:<asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSoLuong" runat="server" ErrorMessage="Chưa nhập số lượng" ControlToValidate="txtSoLuong" ForeColor="#CC3300">(*)</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvSoLuong" runat="server" ErrorMessage="Số lượng không hợp lệ" ControlToValidate="txtSoLuong" ForeColor="#CC3300" Operator="GreaterThan" Type="Integer" ValueToCompare="0">(*)</asp:CompareValidator>
                            cái
                        </div>
                        <br />
                        <div class="text-center">
                            <asp:Button ID="btThem" runat="server" OnClick="btThem_Click" Text=">" Width="37px" />
                        </div>
                    </div>
                    <div class="col-md-6 border-top border-bottom border-primary">
                        Danh sách bánh được đặt: 
                      <br />
                        <asp:ListBox ID="lstBanh" SelectionMode="Multiple" Rows="8" runat="server" Width="70%"></asp:ListBox>
                        <asp:ImageButton ID="btXoa" ImageUrl="~/Images/delete.gif" OnClick="btXoa_Click" runat="server" />
                      
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btIn" runat="server" OnClick="btIn_Click" CssClass="btn btn-info" Text="In Đơn Đặt Hàng" />
                    </div>
                  
                </div>
                <div class="row mb-2">
                    <div class="col-md-12">
                        <asp:Label ID="lbKetQua" ForeColor="#cc3300" runat="server" Text=""></asp:Label>
                    </div>
                  
                </div>
                  <asp:ValidationSummary ID="vsThongBaoLoi" ForeColor="#ff3300" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>

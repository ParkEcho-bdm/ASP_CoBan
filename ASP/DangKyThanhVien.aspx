<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="ASP.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">HỒ SƠ ĐĂNG KÝ</h2>
            <div class="row border border-primary bg-nen1">
                <div class="col-md-8 p-2 text-center">
                     Thông tin đăng ký
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                    Hồ sơ đăng ký
                </div>
            </div>
             <div class="row border border-primary">
                <div class="col-md-8">
                    <div class="row mt-2 mb-2">
                        <div class="col-md-3">
                            Tên đăng nhập 
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtTenDN" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenDN" 
                                ControlToValidate="txtTenDN" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rvTenDN"
                                ControlToValidate="txtTenDN" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ValidationExpression="[\w|\d|&|_|!]{8}[\w|\d|&|_|!]+"
                                runat="server" ErrorMessage="Email không hợp lệ" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMatKhau" TextMode="Password"  runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMatKhau" 
                               ControlToValidate="txtMatKhau" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Mật khẩu không được bỏ trống">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="row mb-2">
                        <div class="col-md-3">
                            Nhập lại mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMKNL" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvMKNL" 
                               ControlToValidate="txtMKNL" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Mật khẩu nhập lại không được bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvMatKhau" runat="server" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ControlToValidate="txtMKNL" ControlToCompare="txtMatKhau"
                                ErrorMessage="Mật khẩu nhập lại không đúng"></asp:CompareValidator>
                        </div>
                    </div>
                     <div class="row mb-2 bg-nen1">
                        <div class="col-md-12 text-center p-2">
                            Thông tin cá nhân
                        </div>                       
                    </div>
                     <div class="row mb-2">
                        <div class="col-md-3">
                            Họ tên khách hàng
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtHoten" runat="server" CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvHoTen" 
                               ControlToValidate="txtHoten" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa nhập họ tên" /> 
                        </div>
                    </div>
                      <div class="row mb-2">
                        <div class="col-md-3">
                           Ngày sinh
                        </div>
                        <div class="col-md-9">
                            <div class="form-inline">
                                <asp:DropDownList ID="ddlNgay" CssClass="form-control" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNgay" 
                               ControlToValidate="ddlNgay" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa chọn ngày" />
                             
                                <asp:DropDownList ID="ddlThang"  CssClass="form-control" runat="server"></asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="rfvThang" 
                               ControlToValidate="ddlThang" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa chọn tháng" />
                                <asp:DropDownList ID="ddlNam" CssClass="form-control" runat="server"></asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvNam" 
                               ControlToValidate="ddlNam" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa chọn năm" />
                            </div>
                        </div>
                    </div>
                      <div class="row mb-2">
                        <div class="col-md-3">
                           Email
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail"
                                ControlToValidate="txtEmail" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                runat="server" ErrorMessage="Email không hợp lệ" />
                        </div>
                    </div>
                      <div class="row mb-2">
                        <div class="col-md-3">
                            Thu nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RangeValidator ID="rvThuNhap" Text="(*)" Display="Dynamic" CssClass="text-danger"
                                ControlToValidate="txtThuNhap" MinimumValue="1000000" MaximumValue="50000000"
                                runat="server" ErrorMessage="Thu nhập hợp lệ [1 - 50] triệu" />
                        </div>
                    </div>
                      <div class="row mb-2">
                        <div class="col-md-3">
                          Giới tính
                        </div>
                        <div class="col-md-9">
                            <asp:CheckBox ID="chkPhai" runat="server" Text="Nam" Checked="true" />
                        </div>
                    </div>

                      <div class="row mb-2">
                        <div class="col-md-3">
                           Địa chỉ
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtDiaChi" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                      <div class="row mb-2">
                        <div class="col-md-3">
                            Điện thoại
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                      <div class="row mb-2">
                        <div class="col-md-12 text-center">
                            <asp:Button ID="btDangKy" OnClick="btDangKy_Click" runat="server" Text="Đăng ký" />
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="vsTongHopLoi" HeaderText="Danh sách lỗi:" 
                         CssClass="text-danger" runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

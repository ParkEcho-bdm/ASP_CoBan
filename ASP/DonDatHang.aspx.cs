using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlBanh.Items.Add(new ListItem("Bún Bò ", "01"));
                ddlBanh.Items.Add(new ListItem("Bánh kem 1000 lớp ", "02"));
                ddlBanh.Items.Add(new ListItem("chu bin ", "03"));
                ddlBanh.Items.Add(new ListItem("ăn gì cũng đc", "04"));
            }
        }

        protected void ddlBanh_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            bool checkExist = false;
            char[] delim = { '(', ')' };
            int soluong;
            
            for (int i = 0; i < lstBanh.Items.Count; i++)
            {
                string itemText = lstBanh.Items[i].Text;
                if (itemText.Contains(ddlBanh.SelectedItem.Text))
                { 
                    string[] arr = itemText.Split(delim);
                    soluong = int.Parse(txtSoLuong.Text) + int.Parse(arr[1]);
                    lstBanh.Items[i].Text = $"{ddlBanh.SelectedItem.Text} ({soluong})";
                    checkExist = true;
                    break;
                }
            }
            if (!checkExist)
            {
                string data = $"{ddlBanh.SelectedItem.Text} ({txtSoLuong.Text})";
                lstBanh.Items.Add(data);
            }
        }

        protected void btXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btIn_Click(object sender, EventArgs e)
        {
            string kq = "";
            //b1.thu thap thong tin
            kq += "<h2 class='text-center'> HOÁ ĐƠN ĐẶT HÀNG </h2>";
            kq += "<div class='border border-primary p-2'>";
            kq += "Khách hàng: <i>" + txtHoTen.Text + "</i><br>";
            kq += "Địa chỉ: <i>" + txtDiaChi.Text + "</i><br>";
            kq += "Mã số thuế: <i>" + txtMST.Text + "</i><br><br>";

            kq += "<b>Đặt các loại bánh sau:</b>";
            kq += "<table class='table table-bordered'>";
            char[] delim = { '(', ')' };
            foreach (ListItem item in lstBanh.Items)
            {
                string[] arr = item.Text.Split(delim);
                kq += "<tr>";
                kq += $"<td> {arr[0]} </td> <td> {arr[1]} </td>";
                kq += "</tr>";
            }

            kq += "</table>";
            kq += "</div>";


            lbKetQua.Text = kq;
        }
    }
}
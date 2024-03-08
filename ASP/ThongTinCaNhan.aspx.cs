using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP
{
    public partial class ThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //khoi tao cho ddlTrinhDo
                ddlTrinhDo.Items.Add(new ListItem("ĐẠi HỌC"));
                ddlTrinhDo.Items.Add(new ListItem("Cao đẳng"));
                //...

                //khoi tao cho lstNgheNghiep
                lstNgheNghiep.Items.Add(new ListItem("Công nhân"));
                lstNgheNghiep.Items.Add(new ListItem("Lập trình viên"));
                lstNgheNghiep.Items.Add(new ListItem("Kỹ sư"));
                //...

                //khoi tao cho chkListSoThich
                chkListSoThich.Items.Add(new ListItem("$$$$"));
                chkListSoThich.Items.Add(new ListItem("Xem fim"));
                chkListSoThich.Items.Add(new ListItem("abcxyz"));
                chkListSoThich.Items.Add(new ListItem("Ăn"));
     
            }

        }

        protected void btGui_Click(object sender, EventArgs e)
        {
            string kq = "";
    
            kq += "<h2 class='mt-3'>Thông tin đăng ký của bạn</h2>";
            kq += "<ul>";

            kq += $"<li>Họ tên: {txtHoTen.Text}</li>";
            kq += string.Format("<li> Ngày sinh: {0} </li>", txtNgaySinh.Text);
            if (rdNam.Checked)
            {
                kq += $"<li> Giới tính: {rdNam.Text} </li>";
            }
            else
            {
                kq += $"<li> Giới tính: {rdNu.Text} </li>";
            }

            kq += $"<li>Trình độ: {ddlTrinhDo.SelectedItem.Text}</li>";
            kq += $"<li>Nghề nghiệp: {lstNgheNghiep.SelectedItem.Text}</li>";

            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                FHinh.SaveAs(path + "/" + FHinh.FileName);
                kq += $"<li>Ảnh: <img src='Uploads/{FHinh.FileName}'> </li>";
            }

            string sothich = "";
            foreach (ListItem x in chkListSoThich.Items)
            {
                if (x.Selected)
                {
                    sothich += x.Text + ";";
                }
            }

            kq += $"<li>Sở thích: {sothich}</li>";

            kq += "<ul>";
            lbKetQua.Text = kq;

        }
    }
}
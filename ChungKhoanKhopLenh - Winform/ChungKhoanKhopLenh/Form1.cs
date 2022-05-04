using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ChungKhoanKhopLenh
{
    public partial class Form1 : Form
    {
        SqlConnection conn = GetDBConnection();
        SqlCommand command = null;

        public Form1()
        {
            InitializeComponent();
        }

        private static SqlConnection GetDBConnection()
        {
            string datasource = "MINHCHIENPC";
            string database = "Chungkhoan";
            string username = "sa";
            string password = "123";
            string connString = @"Data Source=" + datasource + ";Initial Catalog="
                        + database + ";Persist Security Info=True;User ID=" + username + ";Password=" + password;
            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }

        private bool validateInput()
        {
            if (tbMaCK.Text.Length == 0)
            {
                MessageBox.Show("Hãy nhập mã cổ phiếu !", "Thông báo");
                tbMaCK.Focus();
                return false;
            }

            if (tbKhoiluong.Text.Length == 0)
            {
                MessageBox.Show("Hãy nhập khối lượng !", "Thông báo");
                tbKhoiluong.Focus();
                return false;
            }

            if (tbGia.Text.Length == 0)
            {
                MessageBox.Show("Hãy nhập giá !", "Thông báo");
                tbGia.Focus();
                return false;
            }

            if (!cbMB.SelectedItem.Equals("Bán") && !cbMB.SelectedItem.Equals("Mua"))
            {
                MessageBox.Show("Hãy chọn loại Mua/Bán !", "Thông báo");
                cbMB.Focus();
                return false;
            }

            if (cbLoaiLenh.Text.Length == 0)
            {
                MessageBox.Show("Hãy chọn loại lệnh !", "Thông báo");
                cbLoaiLenh.Focus();
                return false;
            }
            return true;
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            tbMaCK.Text = "";
            tbKhoiluong.Text = "";
            tbGia.Text = "";
        }

        private void btnDatLenh_Click(object sender, EventArgs e)
        {
            if (!validateInput()) { return; }

            conn.Open();
            DateTime dateTime = DateTime.Now;
            String dateTimeStr = dateTime.ToString("yyyy-MM-dd HH:mm:ss.mmm");

            command = new SqlCommand("SP_KHOPLENH_LO", conn);
            String loaiGD = null;

            if (cbMB.SelectedItem.Equals("Bán"))
                loaiGD = "B";

            else
                loaiGD = "M";

            //try
            //{
            if (float.Parse(tbGia.Text) > 0 && int.Parse(tbKhoiluong.Text) > 0)
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@macp", SqlDbType.NVarChar).Value = tbMaCK.Text.ToUpper();
                command.Parameters.Add("@Ngay", SqlDbType.NVarChar).Value = dateTimeStr;
                command.Parameters.Add("@LoaiGD", SqlDbType.Char).Value = loaiGD;
                command.Parameters.Add("@soluongMB", SqlDbType.Int).Value = int.Parse(tbKhoiluong.Text);
                command.Parameters.Add("@giadatMB", SqlDbType.Float).Value = float.Parse(tbGia.Text);

                command.ExecuteNonQuery();
                MessageBox.Show("Đặt lệnh thành công", "Thông báo");
                btnReset.PerformClick();
            }
            else MessageBox.Show(" Kiểm tra lại thông tin" + dateTimeStr, "Thông báo");
            //}
            //catch
            //{
            //    MessageBox.Show("Không thành công. Kiểm tra lại thông tin", "Thông báo");

            //}
            conn.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.cbLoaiLenh.SelectedIndex = 0;
            this.cbMB.SelectedIndex = 0;
        }

        private void tbKhoiluong_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);
        }

        private void tbGia_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && (e.KeyChar != '.');

            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1 || (sender as TextBox).Text.Length < 1))
            {
                e.Handled = true;
            }
        }
    }
}

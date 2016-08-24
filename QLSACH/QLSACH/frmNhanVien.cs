using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace QLSACH
{
    public partial class frmNhanVien : Form
    {
        string cnStr;
        SqlConnection cn;
        DataTable dt;

        public frmNhanVien()
        {
            InitializeComponent();
        }

        private void frmNhanVien_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            ShowData();
           
        }
        private void ShowData()
        {
            string sql = "SELECT * FROM NhanVien";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            dt = new DataTable();
            da.Fill(dt);
            dgrvnhanvien.DataSource = dt;

           
        }

        private void btthem_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO NhanVien VALUES ('" + txtmaNV.Text + "',N'" + txttenNV.Text + "', N'" + txtdiachi.Text + "', '" + txtdthoai.Text + "')";
            cn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.ExecuteNonQuery();
                ShowData();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        private void dgrvnhanvien_SelectionChanged(object sender, EventArgs e)
        {
            if (dgrvnhanvien.CurrentRow != null)
            {
                txtmaNV.Text = dgrvnhanvien.CurrentRow.Cells["MaNV"].Value.ToString();
                txttenNV.Text = dgrvnhanvien.CurrentRow.Cells["TenNV"].Value.ToString();
                txtdiachi.Text = dgrvnhanvien.CurrentRow.Cells["DiaChi"].Value.ToString();
                txtdthoai.Text = dgrvnhanvien.CurrentRow.Cells["SoDienThoai"].Value.ToString();
            }
        }

        private void btthoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Ban có muốn thoát chương trình?", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                Close();
        }

        private void btxoa_Click(object sender, EventArgs e)
        {
            DialogResult dr;
            dr = MessageBox.Show("Bạn thật sự muốn xóa nhân viên " + txtmaNV.Text + "?", "Xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.No)
                return;
            cn.Open();
            string sql = @"DELETE NhanVien WHERE MaNV = '" + txtmaNV.Text + "'";
        
            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                ShowData();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
          

        }

        private void btsua_Click(object sender, EventArgs e)
        {
            int index = dgrvnhanvien.CurrentCell.RowIndex;
            DataGridViewRow r = dgrvnhanvien.Rows[index];
            dgrvnhanvien.BeginEdit(true);
            r.Cells[0].Value = txtmaNV.Text;
            r.Cells[1].Value = txttenNV.Text;
            r.Cells[2].Value = txtdiachi.Text;
            r.Cells[3].Value = txtdthoai.Text;
            dgrvnhanvien.EndEdit();
            dgrvnhanvien.Refresh();
        }
    }
}

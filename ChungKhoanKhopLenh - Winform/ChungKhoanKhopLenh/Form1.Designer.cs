
namespace ChungKhoanKhopLenh
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnReset = new System.Windows.Forms.Button();
            this.btnDatLenh = new System.Windows.Forms.Button();
            this.cbMB = new System.Windows.Forms.ComboBox();
            this.labelMB = new System.Windows.Forms.Label();
            this.tbGia = new System.Windows.Forms.TextBox();
            this.tbKhoiluong = new System.Windows.Forms.TextBox();
            this.labelGia = new System.Windows.Forms.Label();
            this.labelKhoiLuong = new System.Windows.Forms.Label();
            this.labelMaCK = new System.Windows.Forms.Label();
            this.labelLoaiLenh = new System.Windows.Forms.Label();
            this.tbMaCK = new System.Windows.Forms.TextBox();
            this.cbLoaiLenh = new System.Windows.Forms.ComboBox();
            this.labelHeader = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(327, 314);
            this.btnReset.Margin = new System.Windows.Forms.Padding(2);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(56, 27);
            this.btnReset.TabIndex = 7;
            this.btnReset.Text = "Làm Lại";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // btnDatLenh
            // 
            this.btnDatLenh.BackColor = System.Drawing.Color.PowderBlue;
            this.btnDatLenh.Location = new System.Drawing.Point(179, 314);
            this.btnDatLenh.Margin = new System.Windows.Forms.Padding(2);
            this.btnDatLenh.Name = "btnDatLenh";
            this.btnDatLenh.Size = new System.Drawing.Size(62, 27);
            this.btnDatLenh.TabIndex = 6;
            this.btnDatLenh.Text = "Đặt Lệnh";
            this.btnDatLenh.UseVisualStyleBackColor = false;
            this.btnDatLenh.Click += new System.EventHandler(this.btnDatLenh_Click);
            // 
            // cbMB
            // 
            this.cbMB.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbMB.FormattingEnabled = true;
            this.cbMB.Items.AddRange(new object[] {
            "Mua",
            "Bán"});
            this.cbMB.Location = new System.Drawing.Point(395, 207);
            this.cbMB.Margin = new System.Windows.Forms.Padding(2);
            this.cbMB.Name = "cbMB";
            this.cbMB.Size = new System.Drawing.Size(92, 21);
            this.cbMB.TabIndex = 5;
            // 
            // labelMB
            // 
            this.labelMB.AutoSize = true;
            this.labelMB.Location = new System.Drawing.Point(315, 211);
            this.labelMB.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelMB.Name = "labelMB";
            this.labelMB.Size = new System.Drawing.Size(52, 13);
            this.labelMB.TabIndex = 22;
            this.labelMB.Text = "Mua/Bán";
            // 
            // tbGia
            // 
            this.tbGia.Location = new System.Drawing.Point(133, 211);
            this.tbGia.Margin = new System.Windows.Forms.Padding(2);
            this.tbGia.Name = "tbGia";
            this.tbGia.Size = new System.Drawing.Size(92, 20);
            this.tbGia.TabIndex = 3;
            this.tbGia.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbGia_KeyPress);
            // 
            // tbKhoiluong
            // 
            this.tbKhoiluong.Location = new System.Drawing.Point(133, 164);
            this.tbKhoiluong.Margin = new System.Windows.Forms.Padding(2);
            this.tbKhoiluong.Name = "tbKhoiluong";
            this.tbKhoiluong.Size = new System.Drawing.Size(92, 20);
            this.tbKhoiluong.TabIndex = 2;
            this.tbKhoiluong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbKhoiluong_KeyPress);
            // 
            // labelGia
            // 
            this.labelGia.AutoSize = true;
            this.labelGia.Location = new System.Drawing.Point(69, 214);
            this.labelGia.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelGia.Name = "labelGia";
            this.labelGia.Size = new System.Drawing.Size(23, 13);
            this.labelGia.TabIndex = 19;
            this.labelGia.Text = "Giá";
            // 
            // labelKhoiLuong
            // 
            this.labelKhoiLuong.AutoSize = true;
            this.labelKhoiLuong.Location = new System.Drawing.Point(69, 167);
            this.labelKhoiLuong.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelKhoiLuong.Name = "labelKhoiLuong";
            this.labelKhoiLuong.Size = new System.Drawing.Size(61, 13);
            this.labelKhoiLuong.TabIndex = 18;
            this.labelKhoiLuong.Text = "Khối Lượng";
            // 
            // labelMaCK
            // 
            this.labelMaCK.AutoSize = true;
            this.labelMaCK.Location = new System.Drawing.Point(69, 120);
            this.labelMaCK.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelMaCK.Name = "labelMaCK";
            this.labelMaCK.Size = new System.Drawing.Size(39, 13);
            this.labelMaCK.TabIndex = 17;
            this.labelMaCK.Text = "Mã CK";
            // 
            // labelLoaiLenh
            // 
            this.labelLoaiLenh.AutoSize = true;
            this.labelLoaiLenh.Location = new System.Drawing.Point(315, 163);
            this.labelLoaiLenh.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelLoaiLenh.Name = "labelLoaiLenh";
            this.labelLoaiLenh.Size = new System.Drawing.Size(54, 13);
            this.labelLoaiLenh.TabIndex = 16;
            this.labelLoaiLenh.Text = "Loại Lệnh";
            // 
            // tbMaCK
            // 
            this.tbMaCK.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbMaCK.Location = new System.Drawing.Point(133, 117);
            this.tbMaCK.Margin = new System.Windows.Forms.Padding(2);
            this.tbMaCK.Name = "tbMaCK";
            this.tbMaCK.Size = new System.Drawing.Size(92, 20);
            this.tbMaCK.TabIndex = 1;
            // 
            // cbLoaiLenh
            // 
            this.cbLoaiLenh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLoaiLenh.FormattingEnabled = true;
            this.cbLoaiLenh.Items.AddRange(new object[] {
            "LO"});
            this.cbLoaiLenh.Location = new System.Drawing.Point(395, 160);
            this.cbLoaiLenh.Margin = new System.Windows.Forms.Padding(2);
            this.cbLoaiLenh.Name = "cbLoaiLenh";
            this.cbLoaiLenh.Size = new System.Drawing.Size(92, 21);
            this.cbLoaiLenh.TabIndex = 4;
            // 
            // labelHeader
            // 
            this.labelHeader.AutoSize = true;
            this.labelHeader.Font = new System.Drawing.Font("Segoe UI", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelHeader.Location = new System.Drawing.Point(200, 9);
            this.labelHeader.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelHeader.Name = "labelHeader";
            this.labelHeader.Size = new System.Drawing.Size(158, 40);
            this.labelHeader.TabIndex = 16;
            this.labelHeader.Text = "ĐẶT LỆNH";
            this.labelHeader.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(556, 356);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.btnDatLenh);
            this.Controls.Add(this.cbMB);
            this.Controls.Add(this.labelMB);
            this.Controls.Add(this.tbGia);
            this.Controls.Add(this.tbKhoiluong);
            this.Controls.Add(this.labelGia);
            this.Controls.Add(this.labelKhoiLuong);
            this.Controls.Add(this.labelMaCK);
            this.Controls.Add(this.labelHeader);
            this.Controls.Add(this.labelLoaiLenh);
            this.Controls.Add(this.tbMaCK);
            this.Controls.Add(this.cbLoaiLenh);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Chứng khoán";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.Button btnDatLenh;
        private System.Windows.Forms.ComboBox cbMB;
        private System.Windows.Forms.Label labelMB;
        private System.Windows.Forms.TextBox tbGia;
        private System.Windows.Forms.TextBox tbKhoiluong;
        private System.Windows.Forms.Label labelGia;
        private System.Windows.Forms.Label labelKhoiLuong;
        private System.Windows.Forms.Label labelMaCK;
        private System.Windows.Forms.Label labelLoaiLenh;
        private System.Windows.Forms.TextBox tbMaCK;
        private System.Windows.Forms.ComboBox cbLoaiLenh;
        private System.Windows.Forms.Label labelHeader;
    }
}


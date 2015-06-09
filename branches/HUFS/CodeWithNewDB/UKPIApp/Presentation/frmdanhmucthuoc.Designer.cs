using UKPI.Utils;
namespace UKPI.Presentation
{
    partial class frmdanhmucthuoc
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmdanhmucthuoc));
            this.btnLuuIn = new System.Windows.Forms.Button();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn13 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn14 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.grdToaThuoc = new UKPI.Controls.DataGridView_RowNum();
            this.MedicineName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MedicineID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.STTTheoDMTCuaBYT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenThanhPhanThuoc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HamLuong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoDKHoacGPKD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DangBaoCheDuongUong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NhaSanXuat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.QuocGia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DonViTinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoatDong = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.grdToaThuoc)).BeginInit();
            this.SuspendLayout();
            // 
            // btnLuuIn
            // 
            this.btnLuuIn.Image = global::UKPI.Properties.Resources.btnSearch;
            this.btnLuuIn.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
            this.btnLuuIn.Location = new System.Drawing.Point(1082, 44);
            this.btnLuuIn.Name = "btnLuuIn";
            this.btnLuuIn.Size = new System.Drawing.Size(86, 23);
            this.btnLuuIn.TabIndex = 78;
            this.btnLuuIn.Text = "Lưu/Cập nhật";
            this.btnLuuIn.UseVisualStyleBackColor = true;
            this.btnLuuIn.Click += new System.EventHandler(this.btnLuuIn_Click);
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "REGION_NAME";
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.dataGridViewTextBoxColumn1.DefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridViewTextBoxColumn1.HeaderText = "Region";
            this.dataGridViewTextBoxColumn1.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn1.MinimumWidth = 2;
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            this.dataGridViewTextBoxColumn1.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewTextBoxColumn1.Width = 150;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "DISTRIBUTOR_CODE";
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.LightSteelBlue;
            this.dataGridViewTextBoxColumn2.DefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridViewTextBoxColumn2.HeaderText = "Distributors ID";
            this.dataGridViewTextBoxColumn2.MaxInputLength = 14;
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            this.dataGridViewTextBoxColumn2.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.dataGridViewTextBoxColumn2.ToolTipText = "Press F3 to search";
            this.dataGridViewTextBoxColumn2.Width = 101;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "CUST_NAME";
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Info;
            this.dataGridViewTextBoxColumn3.DefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridViewTextBoxColumn3.HeaderText = "Distributor Name";
            this.dataGridViewTextBoxColumn3.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.ReadOnly = true;
            this.dataGridViewTextBoxColumn3.ToolTipText = "Press F3 to search";
            this.dataGridViewTextBoxColumn3.Width = 150;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "STORE_CODE";
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Info;
            this.dataGridViewTextBoxColumn4.DefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridViewTextBoxColumn4.HeaderText = "Store ID";
            this.dataGridViewTextBoxColumn4.MaxInputLength = 14;
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            this.dataGridViewTextBoxColumn4.Width = 150;
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "STORE_NAME";
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Info;
            this.dataGridViewTextBoxColumn5.DefaultCellStyle = dataGridViewCellStyle5;
            this.dataGridViewTextBoxColumn5.HeaderText = "Store Name";
            this.dataGridViewTextBoxColumn5.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.ReadOnly = true;
            this.dataGridViewTextBoxColumn5.Width = 150;
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "STORE_ADDRESS";
            this.dataGridViewTextBoxColumn6.HeaderText = "Store Address";
            this.dataGridViewTextBoxColumn6.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            this.dataGridViewTextBoxColumn6.Width = 150;
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "UPDATED_ADDRESS";
            this.dataGridViewTextBoxColumn7.HeaderText = "Updated Address";
            this.dataGridViewTextBoxColumn7.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.Width = 130;
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.DataPropertyName = "TOWN_NAME";
            this.dataGridViewTextBoxColumn8.HeaderText = "Town";
            this.dataGridViewTextBoxColumn8.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            this.dataGridViewTextBoxColumn8.Width = 150;
            // 
            // dataGridViewTextBoxColumn9
            // 
            this.dataGridViewTextBoxColumn9.DataPropertyName = "URBAN";
            this.dataGridViewTextBoxColumn9.HeaderText = "Urban";
            this.dataGridViewTextBoxColumn9.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn9.Name = "dataGridViewTextBoxColumn9";
            this.dataGridViewTextBoxColumn9.Visible = false;
            this.dataGridViewTextBoxColumn9.Width = 150;
            // 
            // dataGridViewTextBoxColumn10
            // 
            this.dataGridViewTextBoxColumn10.DataPropertyName = "PROVINCE_NAME";
            this.dataGridViewTextBoxColumn10.HeaderText = "Province";
            this.dataGridViewTextBoxColumn10.MaxInputLength = 250;
            this.dataGridViewTextBoxColumn10.Name = "dataGridViewTextBoxColumn10";
            this.dataGridViewTextBoxColumn10.Width = 150;
            // 
            // dataGridViewTextBoxColumn11
            // 
            this.dataGridViewTextBoxColumn11.DataPropertyName = "OUTLET_TYPE_NAME";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleRight;
            dataGridViewCellStyle6.Format = "N3";
            dataGridViewCellStyle6.NullValue = null;
            this.dataGridViewTextBoxColumn11.DefaultCellStyle = dataGridViewCellStyle6;
            this.dataGridViewTextBoxColumn11.HeaderText = "Outlet Classification";
            this.dataGridViewTextBoxColumn11.MaxInputLength = 20;
            this.dataGridViewTextBoxColumn11.Name = "dataGridViewTextBoxColumn11";
            this.dataGridViewTextBoxColumn11.Width = 150;
            // 
            // dataGridViewTextBoxColumn12
            // 
            this.dataGridViewTextBoxColumn12.DataPropertyName = "LOCATION";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleRight;
            dataGridViewCellStyle7.Format = "N3";
            dataGridViewCellStyle7.NullValue = null;
            this.dataGridViewTextBoxColumn12.DefaultCellStyle = dataGridViewCellStyle7;
            this.dataGridViewTextBoxColumn12.HeaderText = "Location";
            this.dataGridViewTextBoxColumn12.MaxInputLength = 9;
            this.dataGridViewTextBoxColumn12.MinimumWidth = 2;
            this.dataGridViewTextBoxColumn12.Name = "dataGridViewTextBoxColumn12";
            this.dataGridViewTextBoxColumn12.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewTextBoxColumn12.Visible = false;
            this.dataGridViewTextBoxColumn12.Width = 73;
            // 
            // dataGridViewTextBoxColumn13
            // 
            this.dataGridViewTextBoxColumn13.DataPropertyName = "STAR_CLUB";
            this.dataGridViewTextBoxColumn13.HeaderText = "Star Club";
            this.dataGridViewTextBoxColumn13.MinimumWidth = 2;
            this.dataGridViewTextBoxColumn13.Name = "dataGridViewTextBoxColumn13";
            this.dataGridViewTextBoxColumn13.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewTextBoxColumn13.Visible = false;
            this.dataGridViewTextBoxColumn13.Width = 2;
            // 
            // dataGridViewTextBoxColumn14
            // 
            this.dataGridViewTextBoxColumn14.DataPropertyName = "TURNOVER";
            this.dataGridViewTextBoxColumn14.HeaderText = "Turnover";
            this.dataGridViewTextBoxColumn14.Name = "dataGridViewTextBoxColumn14";
            this.dataGridViewTextBoxColumn14.Width = 150;
            // 
            // grdToaThuoc
            // 
            this.grdToaThuoc.AllowUserToAddRows = false;
            this.grdToaThuoc.AllowUserToDeleteRows = false;
            this.grdToaThuoc.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.grdToaThuoc.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle8;
            this.grdToaThuoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdToaThuoc.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MedicineName,
            this.MedicineID,
            this.STTTheoDMTCuaBYT,
            this.TenThanhPhanThuoc,
            this.HamLuong,
            this.SoDKHoacGPKD,
            this.DangBaoCheDuongUong,
            this.NhaSanXuat,
            this.QuocGia,
            this.DonViTinh,
            this.HoatDong});
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle9.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle9.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle9.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle9.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.grdToaThuoc.DefaultCellStyle = dataGridViewCellStyle9;
            this.grdToaThuoc.Location = new System.Drawing.Point(4, 92);
            this.grdToaThuoc.Name = "grdToaThuoc";
            this.grdToaThuoc.RowHeadersWidth = 39;
            this.grdToaThuoc.Size = new System.Drawing.Size(1203, 436);
            this.grdToaThuoc.TabIndex = 2;
            // 
            // MedicineName
            // 
            this.MedicineName.DataPropertyName = "MedicineName";
            this.MedicineName.HeaderText = "Tên thuốc";
            this.MedicineName.Name = "MedicineName";
            this.MedicineName.Width = 130;
            // 
            // MedicineID
            // 
            this.MedicineID.DataPropertyName = "MedicineID";
            this.MedicineID.HeaderText = "Mã thuốc";
            this.MedicineID.Name = "MedicineID";
            this.MedicineID.Width = 120;
            // 
            // STTTheoDMTCuaBYT
            // 
            this.STTTheoDMTCuaBYT.DataPropertyName = "STTTheoDMTCuaBYT";
            this.STTTheoDMTCuaBYT.HeaderText = "STT theo DMT của BYT";
            this.STTTheoDMTCuaBYT.Name = "STTTheoDMTCuaBYT";
            this.STTTheoDMTCuaBYT.Width = 110;
            // 
            // TenThanhPhanThuoc
            // 
            this.TenThanhPhanThuoc.DataPropertyName = "TenThanhPhanThuoc";
            this.TenThanhPhanThuoc.HeaderText = "Tên thành phần thuốc";
            this.TenThanhPhanThuoc.Name = "TenThanhPhanThuoc";
            this.TenThanhPhanThuoc.Width = 110;
            // 
            // HamLuong
            // 
            this.HamLuong.DataPropertyName = "HamLuong";
            this.HamLuong.HeaderText = "Hàm lượng";
            this.HamLuong.Name = "HamLuong";
            // 
            // SoDKHoacGPKD
            // 
            this.SoDKHoacGPKD.DataPropertyName = "SoDKHoacGPKD";
            this.SoDKHoacGPKD.HeaderText = "Số đăng ký hoặc GPNK";
            this.SoDKHoacGPKD.Name = "SoDKHoacGPKD";
            this.SoDKHoacGPKD.Width = 105;
            // 
            // DangBaoCheDuongUong
            // 
            this.DangBaoCheDuongUong.DataPropertyName = "DangBaoCheDuongUong";
            this.DangBaoCheDuongUong.HeaderText = "Dạng bào chế. Đường uống";
            this.DangBaoCheDuongUong.Name = "DangBaoCheDuongUong";
            this.DangBaoCheDuongUong.Width = 110;
            // 
            // NhaSanXuat
            // 
            this.NhaSanXuat.DataPropertyName = "NhaSanXuat";
            this.NhaSanXuat.HeaderText = "Nhà sản xuất";
            this.NhaSanXuat.Name = "NhaSanXuat";
            this.NhaSanXuat.Width = 120;
            // 
            // QuocGia
            // 
            this.QuocGia.DataPropertyName = "QuocGia";
            this.QuocGia.HeaderText = "Quốc gia";
            this.QuocGia.Name = "QuocGia";
            this.QuocGia.Width = 110;
            // 
            // DonViTinh
            // 
            this.DonViTinh.DataPropertyName = "DonViTinh";
            this.DonViTinh.HeaderText = "Đơn vị tính";
            this.DonViTinh.Name = "DonViTinh";
            // 
            // HoatDong
            // 
            this.HoatDong.DataPropertyName = "HoatDong";
            this.HoatDong.HeaderText = "Hoạt động";
            this.HoatDong.Name = "HoatDong";
            this.HoatDong.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.HoatDong.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            // 
            // frmdanhmucthuoc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1213, 648);
            this.Controls.Add(this.btnLuuIn);
            this.Controls.Add(this.grdToaThuoc);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmdanhmucthuoc";
            this.Text = "XUẤT KHO THUỐC";
            ((System.ComponentModel.ISupportInitialize)(this.grdToaThuoc)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridViewTextBoxColumn URBAN;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn9;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn10;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn11;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn12;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn13;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn14;
        private System.Windows.Forms.Button btnLuuIn;
        private Controls.DataGridView_RowNum grdToaThuoc;
        private System.Windows.Forms.DataGridViewTextBoxColumn MedicineName;
        private System.Windows.Forms.DataGridViewTextBoxColumn MedicineID;
        private System.Windows.Forms.DataGridViewTextBoxColumn STTTheoDMTCuaBYT;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenThanhPhanThuoc;
        private System.Windows.Forms.DataGridViewTextBoxColumn HamLuong;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoDKHoacGPKD;
        private System.Windows.Forms.DataGridViewTextBoxColumn DangBaoCheDuongUong;
        private System.Windows.Forms.DataGridViewTextBoxColumn NhaSanXuat;
        private System.Windows.Forms.DataGridViewTextBoxColumn QuocGia;
        private System.Windows.Forms.DataGridViewTextBoxColumn DonViTinh;
        private System.Windows.Forms.DataGridViewCheckBoxColumn HoatDong;
    }
}
using UKPI.Utils;
namespace UKPI.Presentation
{
    partial class frmbaocaolichsubenhnhan
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmbaocaolichsubenhnhan));
            this.btnSearch = new System.Windows.Forms.Button();
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
            this.PhongKhamBenh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayKhamBenh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BenhNhan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaNhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaBHYT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BoPhan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.KhuVuc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NhomBenh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ChuanDoan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.QuyetDinhNghi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.LiDo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DienGiai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TuNgay = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DenNgay = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoNgayDuocNghi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnExport = new System.Windows.Forms.Button();
            this.lblTenBenhNhan = new System.Windows.Forms.Label();
            this.txtTenBenhNhan = new System.Windows.Forms.TextBox();
            this.lblMaBenhNhan = new System.Windows.Forms.Label();
            this.txtMaBenhNhan = new System.Windows.Forms.TextBox();
            this.lblMaBHYT = new System.Windows.Forms.Label();
            this.txtMaBHYT = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.grdToaThuoc)).BeginInit();
            this.SuspendLayout();
            // 
            // btnSearch
            // 
            this.btnSearch.Image = global::UKPI.Properties.Resources.btnSearch;
            this.btnSearch.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
            this.btnSearch.Location = new System.Drawing.Point(687, 22);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(86, 23);
            this.btnSearch.TabIndex = 78;
            this.btnSearch.Text = "Tìm kiếm";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
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
            this.PhongKhamBenh,
            this.NgayKhamBenh,
            this.BenhNhan,
            this.MaNhanVien,
            this.MaBHYT,
            this.GioiTinh,
            this.BoPhan,
            this.KhuVuc,
            this.NhomBenh,
            this.ChuanDoan,
            this.QuyetDinhNghi,
            this.LiDo,
            this.DienGiai,
            this.TuNgay,
            this.DenNgay,
            this.SoNgayDuocNghi});
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle9.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle9.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle9.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle9.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.grdToaThuoc.DefaultCellStyle = dataGridViewCellStyle9;
            this.grdToaThuoc.Location = new System.Drawing.Point(4, 49);
            this.grdToaThuoc.Name = "grdToaThuoc";
            this.grdToaThuoc.RowHeadersWidth = 39;
            this.grdToaThuoc.Size = new System.Drawing.Size(1203, 479);
            this.grdToaThuoc.TabIndex = 2;
            // 
            // PhongKhamBenh
            // 
            this.PhongKhamBenh.DataPropertyName = "PhongKhamBenh";
            this.PhongKhamBenh.HeaderText = "Phòng Khám";
            this.PhongKhamBenh.Name = "PhongKhamBenh";
            this.PhongKhamBenh.ReadOnly = true;
            // 
            // NgayKhamBenh
            // 
            this.NgayKhamBenh.DataPropertyName = "NgayKhamBenh";
            this.NgayKhamBenh.HeaderText = "Ngày Khám Bệnh";
            this.NgayKhamBenh.Name = "NgayKhamBenh";
            this.NgayKhamBenh.ReadOnly = true;
            // 
            // BenhNhan
            // 
            this.BenhNhan.DataPropertyName = "BenhNhan";
            this.BenhNhan.HeaderText = "Bệnh Nhân";
            this.BenhNhan.Name = "BenhNhan";
            this.BenhNhan.ReadOnly = true;
            // 
            // MaNhanVien
            // 
            this.MaNhanVien.DataPropertyName = "MaNhanVien";
            this.MaNhanVien.HeaderText = "Mã Nhân Viên";
            this.MaNhanVien.Name = "MaNhanVien";
            this.MaNhanVien.ReadOnly = true;
            // 
            // MaBHYT
            // 
            this.MaBHYT.DataPropertyName = "MaBHYT";
            this.MaBHYT.HeaderText = "Mã BHYT";
            this.MaBHYT.Name = "MaBHYT";
            this.MaBHYT.ReadOnly = true;
            // 
            // GioiTinh
            // 
            this.GioiTinh.DataPropertyName = "GioiTinh";
            this.GioiTinh.HeaderText = "Giới Tính";
            this.GioiTinh.Name = "GioiTinh";
            this.GioiTinh.ReadOnly = true;
            // 
            // BoPhan
            // 
            this.BoPhan.DataPropertyName = "BoPhan";
            this.BoPhan.HeaderText = "Bộ Phận";
            this.BoPhan.Name = "BoPhan";
            this.BoPhan.ReadOnly = true;
            // 
            // KhuVuc
            // 
            this.KhuVuc.DataPropertyName = "KhuVuc";
            this.KhuVuc.HeaderText = "Khu Vực";
            this.KhuVuc.Name = "KhuVuc";
            this.KhuVuc.ReadOnly = true;
            // 
            // NhomBenh
            // 
            this.NhomBenh.DataPropertyName = "NhomBenh";
            this.NhomBenh.HeaderText = "Nhóm Bệnh";
            this.NhomBenh.Name = "NhomBenh";
            this.NhomBenh.ReadOnly = true;
            // 
            // ChuanDoan
            // 
            this.ChuanDoan.DataPropertyName = "ChuanDoan";
            this.ChuanDoan.HeaderText = "Chẩn Đoán";
            this.ChuanDoan.Name = "ChuanDoan";
            this.ChuanDoan.ReadOnly = true;
            // 
            // QuyetDinhNghi
            // 
            this.QuyetDinhNghi.DataPropertyName = "QuyetDinhNghi";
            this.QuyetDinhNghi.HeaderText = "Nghỉ Phép";
            this.QuyetDinhNghi.Name = "QuyetDinhNghi";
            this.QuyetDinhNghi.ReadOnly = true;
            // 
            // LiDo
            // 
            this.LiDo.DataPropertyName = "LiDo";
            this.LiDo.HeaderText = "Lý Do";
            this.LiDo.Name = "LiDo";
            this.LiDo.ReadOnly = true;
            // 
            // DienGiai
            // 
            this.DienGiai.DataPropertyName = "DienGiai";
            this.DienGiai.HeaderText = "Diễn Giải";
            this.DienGiai.Name = "DienGiai";
            this.DienGiai.ReadOnly = true;
            // 
            // TuNgay
            // 
            this.TuNgay.DataPropertyName = "TuNgay";
            this.TuNgay.HeaderText = "Từ Ngày";
            this.TuNgay.Name = "TuNgay";
            this.TuNgay.ReadOnly = true;
            // 
            // DenNgay
            // 
            this.DenNgay.DataPropertyName = "DenNgay";
            this.DenNgay.HeaderText = "Đến Ngày";
            this.DenNgay.Name = "DenNgay";
            this.DenNgay.ReadOnly = true;
            // 
            // SoNgayDuocNghi
            // 
            this.SoNgayDuocNghi.DataPropertyName = "SoNgayDuocNghi";
            this.SoNgayDuocNghi.HeaderText = "Số Ngày Được Nghỉ";
            this.SoNgayDuocNghi.Name = "SoNgayDuocNghi";
            this.SoNgayDuocNghi.ReadOnly = true;
            // 
            // btnExport
            // 
            this.btnExport.Image = global::UKPI.Properties.Resources.import;
            this.btnExport.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
            this.btnExport.Location = new System.Drawing.Point(1061, 595);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(91, 28);
            this.btnExport.TabIndex = 79;
            this.btnExport.Text = "Export";
            this.btnExport.UseVisualStyleBackColor = true;
            this.btnExport.Click += new System.EventHandler(this.btnExport_Click_1);
            // 
            // lblTenBenhNhan
            // 
            this.lblTenBenhNhan.AutoSize = true;
            this.lblTenBenhNhan.Location = new System.Drawing.Point(13, 23);
            this.lblTenBenhNhan.Name = "lblTenBenhNhan";
            this.lblTenBenhNhan.Size = new System.Drawing.Size(80, 13);
            this.lblTenBenhNhan.TabIndex = 80;
            this.lblTenBenhNhan.Text = "Tên bệnh nhân";
            // 
            // txtTenBenhNhan
            // 
            this.txtTenBenhNhan.Location = new System.Drawing.Point(100, 23);
            this.txtTenBenhNhan.Name = "txtTenBenhNhan";
            this.txtTenBenhNhan.Size = new System.Drawing.Size(119, 20);
            this.txtTenBenhNhan.TabIndex = 81;
            // 
            // lblMaBenhNhan
            // 
            this.lblMaBenhNhan.AutoSize = true;
            this.lblMaBenhNhan.Location = new System.Drawing.Point(237, 26);
            this.lblMaBenhNhan.Name = "lblMaBenhNhan";
            this.lblMaBenhNhan.Size = new System.Drawing.Size(76, 13);
            this.lblMaBenhNhan.TabIndex = 82;
            this.lblMaBenhNhan.Text = "Mã bệnh nhân";
            // 
            // txtMaBenhNhan
            // 
            this.txtMaBenhNhan.Location = new System.Drawing.Point(333, 23);
            this.txtMaBenhNhan.Name = "txtMaBenhNhan";
            this.txtMaBenhNhan.Size = new System.Drawing.Size(119, 20);
            this.txtMaBenhNhan.TabIndex = 83;
            // 
            // lblMaBHYT
            // 
            this.lblMaBHYT.AutoSize = true;
            this.lblMaBHYT.Location = new System.Drawing.Point(476, 27);
            this.lblMaBHYT.Name = "lblMaBHYT";
            this.lblMaBHYT.Size = new System.Drawing.Size(54, 13);
            this.lblMaBHYT.TabIndex = 84;
            this.lblMaBHYT.Text = "Mã BHYT";
            // 
            // txtMaBHYT
            // 
            this.txtMaBHYT.Location = new System.Drawing.Point(549, 23);
            this.txtMaBHYT.Name = "txtMaBHYT";
            this.txtMaBHYT.Size = new System.Drawing.Size(119, 20);
            this.txtMaBHYT.TabIndex = 85;
            // 
            // frmbaocaolichsubenhnhan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1213, 648);
            this.Controls.Add(this.txtMaBHYT);
            this.Controls.Add(this.lblMaBHYT);
            this.Controls.Add(this.txtMaBenhNhan);
            this.Controls.Add(this.lblMaBenhNhan);
            this.Controls.Add(this.txtTenBenhNhan);
            this.Controls.Add(this.lblTenBenhNhan);
            this.Controls.Add(this.btnExport);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.grdToaThuoc);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmbaocaolichsubenhnhan";
            this.Text = "XUẤT KHO THUỐC";
            ((System.ComponentModel.ISupportInitialize)(this.grdToaThuoc)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

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
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Button btnExport;
        private Controls.DataGridView_RowNum grdToaThuoc;
        private System.Windows.Forms.Label lblTenBenhNhan;
        private System.Windows.Forms.TextBox txtTenBenhNhan;
        private System.Windows.Forms.Label lblMaBenhNhan;
        private System.Windows.Forms.TextBox txtMaBenhNhan;
        private System.Windows.Forms.Label lblMaBHYT;
        private System.Windows.Forms.DataGridViewTextBoxColumn PhongKhamBenh;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayKhamBenh;
        private System.Windows.Forms.DataGridViewTextBoxColumn BenhNhan;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaBHYT;
        private System.Windows.Forms.DataGridViewTextBoxColumn GioiTinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn BoPhan;
        private System.Windows.Forms.DataGridViewTextBoxColumn KhuVuc;
        private System.Windows.Forms.DataGridViewTextBoxColumn NhomBenh;
        private System.Windows.Forms.DataGridViewTextBoxColumn ChuanDoan;
        private System.Windows.Forms.DataGridViewTextBoxColumn QuyetDinhNghi;
        private System.Windows.Forms.DataGridViewTextBoxColumn LiDo;
        private System.Windows.Forms.DataGridViewTextBoxColumn DienGiai;
        private System.Windows.Forms.DataGridViewTextBoxColumn TuNgay;
        private System.Windows.Forms.DataGridViewTextBoxColumn DenNgay;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoNgayDuocNghi;
        private System.Windows.Forms.TextBox txtMaBHYT;
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.IO;
using System.Collections;
using System.Windows.Forms;
using Excel;
using FPT.Component.ExcelPlus;
using UKPI.BusinessObject;
using UKPI.Presentation.ApproveTSLookup;
using UKPI.ValueObject;
using UKPI.Utils;
using UKPI.DataAccessObject;
using DataTable = System.Data.DataTable;
using UKPI.Controls;
namespace UKPI.Presentation
{
    public partial class frmKhambenh : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmKhambenh));

        private clsBaseBO _bo = new clsBaseBO();
        private readonly clsCommon _common = new clsCommon();
        private readonly ShareEntityDao _shareEntityDao = new ShareEntityDao();
        private readonly ThongTinKhamBenhDao _thongTinKhamBenhDao = new ThongTinKhamBenhDao();
        private readonly ChotTonKhoDao _chotTonKhoDao = new ChotTonKhoDao();
        QuyetDinhNghiPhep quyetDinhNghiPhep;
        private Dictionary<int, string> danhSachThuoc = new Dictionary<int, string>();
        private List<ThongTinGiaoDich> listCurrentTransactions = new List<ThongTinGiaoDich>();

        readonly System.Data.DataTable _dt = null;
        ComboBox cbm;
        DataGridViewCell currentCell;
        //private ComboBox cellComboBox;
        private int _checkRowsCount = 0;

        // Declare constants
        private const string FieldCheck = "colCheck";
        private const String Check = "CHECK";
        private const String ValueTrue = "Y";
        private const String ValueFalse = "N";
        //param value.
        private String parHanChotDuyetCong = "";
        private String parHanChotDitre = "";
        private String parHanChotVeSom = "";
        private String parChuanTinhCong = "";
        private String parHanMucTinhOt = "";


        // Declare private fields
        private ChamCongLichLamViecBo _lichLamViecBo = new ChamCongLichLamViecBo();

        readonly DataGridViewColumn _originalColumns;
        private DataTable _dtApproveTimesheet;

        #endregion



        public frmKhambenh()
        {

            InitializeComponent();

            clsTitleManager.InitTitle(this);
            //this.cellComboBox = new ComboBox();
            //this.cellComboBox.DataSource = _shareEntityDao.LoadThongTinCachUongThuoc();
            //this.cellComboBox.DisplayMember = "CachUong";
            //this.cellComboBox.ValueMember = "MaUongThuoc";
            //this.cellComboBox.DropDownStyle = ComboBoxStyle.DropDown;
            //this.cellComboBox.AutoCompleteSource = AutoCompleteSource.ListItems;
            //this.cellComboBox.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            //this.cellComboBox.SelectedIndexChanged += new EventHandler(cellComboboxValueChanged);
            //  this.cellComboBox.vi += new EventHandler(oDateTimePicker_CloseUp);
            // this.cellComboBox.Visible = false;
            // this.grdToaThuoc.Controls.Add(cellComboBox);
            GetParam();
            SetDefauldValue();
            this.Text = "KHÁM BỆNH CÓ BẢO HIỂM";

            // Save original columns
            // _originalColumns = new DataGridViewColumn[grdStores.Columns.Count;
            // grdStores.Columns.CopyTo(_originalColumns, 0);
            // grdStores.Sorted += grdStores_Sorted;
            if (_chotTonKhoDao.CheckChotTonDangHoatDong(cbbPhongKham.SelectedValue.ToString()) > 0)
            {
                DialogResult result = MessageBox.Show("Kho đang được chốt tồn. Vui lòng thực hiện sau", "Thông tin", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnSearch.Enabled = false;
            }
            else
            {
                btnSearch.Enabled = true;
            }
        }

        void grdStores_Sorted(object sender, EventArgs e)
        {
            //this.ProcessDataRow();
        }

        private void GetParam()
        {
        }

        private void SetDefauldValue()
        {
            BindPhongKham();
            BindGioiTinh();
            BindBoPhan();
            BindKhuVuc();
            BindNhomBenh();
            BindMaICD();
            // LoadThongTinBenhNhan();
            BuildGridViewRow();
            //txtBenhNhan.ReadOnly = true;
            //txtMaBHYT.ReadOnly = true;
            //txtNamSinh.ReadOnly = true;
            //txtCongTy.ReadOnly = true;
            //cbbBoPhan.Enabled = false;
            //cbbGioiTinh.Enabled = false;
            //cbbKhuVuc.Enabled = false;
            //cbbPhongKham.Enabled = false;
            btnLuuIn.Enabled = false;
        }
        private void LoadThongTinBenhNhan()
        {
            ThongTinBenhNhan ttBenhNhan = _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            txtBenhNhan.Text = ttBenhNhan.FullName;
            txtMaNhanVien.Text = ttBenhNhan.EmployeeID;
            txtMaBHYT.Text = ttBenhNhan.MaBHYT;
            txtNamSinh.Text = ttBenhNhan.NamSinh.ToString();
            txtCongTy.Text = "Unilever";
            cbbBoPhan.SelectedValue = ttBenhNhan.BoPhan;
            cbbGioiTinh.SelectedText = ttBenhNhan.GioiTinh;
            cbbKhuVuc.SelectedText = ttBenhNhan.KhuVuc;
        }
        //void oDateTimePicker_CloseUp(object sender, EventArgs e)
        //{
        //    // Hiding the control after use   
        //    cellComboBox.Visible = false;
        //} 
        //private void grdToaThuoc_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        //{
        //    currentCell = this.grdToaThuoc.CurrentCell;
        //    if (e.ColumnIndex == 8 && e.RowIndex >= 0)
        //    {
        //        System.Drawing.Rectangle tempRect = grdToaThuoc.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, false);

        //        cellComboBox.Location = tempRect.Location;

        //        cellComboBox.Width = tempRect.Width;

        //        cellComboBox.Visible = true;

        //    }

        //}
        //void cellComboboxValueChanged(object sender, EventArgs e)
        //{
        //    MessageBox.Show(cellComboBox.Text);
        //    grdToaThuoc.CurrentCell.Value = cellComboBox.Text;
        //    cellComboBox.Visible = false;
        //}
        private void txtMaNhanVien_MouseLeave(object sender, EventArgs e)
        {
            string maNhanVien = txtMaNhanVien.Text;
            if (!string.IsNullOrEmpty(maNhanVien))
            {
                List<ThongTinBenhNhan> listBenhNhan = _thongTinKhamBenhDao.SearchThongTinBenhNhan(maNhanVien, string.Empty);
                if (listBenhNhan != null && listBenhNhan.Count == 1)
                {
                    txtBenhNhan.BackColor = Color.White;
                    ThongTinBenhNhan ttbn = listBenhNhan[0];
                    txtBenhNhan.Text = ttbn.FullName;
                    txtMaNhanVien.Text = ttbn.EmployeeID;
                    txtMaBHYT.Text = ttbn.MaBHYT;
                    txtNamSinh.Text = ttbn.NamSinh.ToString();
                    txtCongTy.Text = System.Configuration.ConfigurationManager.AppSettings["Company"];
                    List<GioiTinh> listGoiTinh = _shareEntityDao.LoadGioiTinh();
                    List<BoPhan> listBoPhan = _shareEntityDao.LoadDanhSachBoPhan();
                    List<KhuVuc> listKhuVuc = _shareEntityDao.LoadDanhSachKhuVuc();
                    cbbBoPhan.SelectedIndex = listBoPhan.FindIndex(c => c.MaBoPhan == ttbn.BoPhan);
                    cbbGioiTinh.SelectedIndex = listGoiTinh.FindIndex(c => c.Name == ttbn.GioiTinh);
                    cbbKhuVuc.SelectedIndex = listKhuVuc.FindIndex(c => c.TenKhuVuc == ttbn.KhuVuc);
                }
                else
                {
                   // txtBenhNhan.BackColor = Color.Red;
                    txtBenhNhan.Text = string.Empty;
                    txtMaNhanVien.Text = string.Empty;
                    txtMaBHYT.Text = string.Empty;
                    txtNamSinh.Text = string.Empty;
                    txtCongTy.Text = string.Empty;
                    cbbBoPhan.SelectedIndex = -1;
                    cbbGioiTinh.SelectedIndex = -1;
                    cbbKhuVuc.SelectedIndex = -1;
                }
            }
            else
            {
                //txtBenhNhan.BackColor = Color.Red;
                txtBenhNhan.Text = string.Empty;
                txtMaNhanVien.Text = string.Empty;
                txtMaBHYT.Text = string.Empty;
                txtNamSinh.Text = string.Empty;
                txtCongTy.Text = string.Empty;
                cbbBoPhan.SelectedIndex = -1;
                cbbGioiTinh.SelectedIndex = -1;
                cbbKhuVuc.SelectedIndex = -1;
            }
        }
        public void SetMaNhanVien(string maNhanVien)
        {
            txtMaNhanVien.Text = maNhanVien;
        }
        public void SetTenBenhNhan(string tenBenhNhan)
        {
            txtBenhNhan.BackColor = Color.White;
            txtBenhNhan.Text = tenBenhNhan;
        }
        public void SetMaBHYT(string maBHYT)
        {
            txtMaBHYT.Text = maBHYT;
        }
        public void SetNamSinh(string namSinh)
        {
            txtNamSinh.Text = namSinh;
        }
        public void SetCongTy(string congTy)
        {
            txtCongTy.Text = System.Configuration.ConfigurationManager.AppSettings["Company"];
        }
        public void SetGioiTinh(string gioiTinh)
        {
            List<GioiTinh> listGoiTinh = _shareEntityDao.LoadGioiTinh();
            cbbGioiTinh.SelectedIndex = listGoiTinh.FindIndex(c => c.Name == gioiTinh);

        }
        public void SetBoPhan(string boPhan)
        {
            List<BoPhan> listBoPhan = _shareEntityDao.LoadDanhSachBoPhan();
            cbbBoPhan.SelectedIndex = listBoPhan.FindIndex(c => c.TenBoPhan == boPhan);
        }
        public void SetKhuVuc(string khuVuc)
        {
            List<KhuVuc> listKhuVuc = _shareEntityDao.LoadDanhSachKhuVuc();
            cbbKhuVuc.SelectedIndex = listKhuVuc.FindIndex(c => c.TenKhuVuc == khuVuc);
        }
        private void BindPhongKham()
        {
          
            List<PhongKham> listPhongKham = _shareEntityDao.LoadDanhSachPhongKham();
            cbbPhongKham.DataSource = listPhongKham;
            string currentKho = System.Configuration.ConfigurationManager.AppSettings["RCLINIC00002"];
            int currentIndex = listPhongKham.FindIndex(a => a.RoomID == currentKho);
            cbbPhongKham.SelectedIndex = currentIndex;

            /*
            cbbPhongKham.AutoCompleteMode = AutoCompleteMode.Suggest;
            cbbPhongKham.AutoCompleteSource = AutoCompleteSource.CustomSource;
            AutoCompleteStringCollection combData = new AutoCompleteStringCollection();
            List<PhongKham> lpk = _shareEntityDao.LoadDanhSachPhongKham();
            if (lpk != null)
            {
                for (int i = 0; i < lpk.Count; i++)
                {
                    combData.Add(lpk[i].RoomName);
                }
            }
             cbbPhongKham.AutoCompleteCustomSource = combData;
              */

        }
        private void BindGioiTinh()
        {
            cbbGioiTinh.DataSource = _shareEntityDao.LoadGioiTinh();
        }
        private void BindBoPhan()
        {
            cbbBoPhan.DataSource = _shareEntityDao.LoadDanhSachBoPhan();
        }
        private void BindKhuVuc()
        {
            cbbKhuVuc.DataSource = _shareEntityDao.LoadDanhSachKhuVuc();
        }
        private void BindNhomBenh()
        {
            cbbNhomBenh.DataSource = _shareEntityDao.LoadDanhSachNhomBenh();
        }
        private void BindMaICD()
        {

            cbbMaICD.ValueMember = "Ma";
            cbbMaICD.DisplayMember = "DienGiai";
            cbbMaICD.DataSource = _shareEntityDao.LoadDanhSachMaICD();
        }
        private void BindGroup()
        {

        }
        private void BuildGridViewRow()
        {
            //yourDataGridView.Rows.Add(row);
            //DataGridViewComboBoxCell loaiThuoc = new DataGridViewComboBoxCell();
            //loaiThuoc.DataSource = _shareEntityDao.LoadThongTinThuoc();
            //loaiThuoc.DisplayMember = "MaThuoc";
            //loaiThuoc.ValueMember = "MaThuoc";

            //DataGridViewComboBoxCell cachUong = new DataGridViewComboBoxCell();
            //cachUong.DataSource = _shareEntityDao.LoadThongTinThuoc();
            //cachUong.DisplayMember = "CachUong";
            //cachUong.ValueMember = "MaUongThuoc";

            DataGridViewCheckBoxColumn checkBoxColumn = new DataGridViewCheckBoxColumn();
            checkBoxColumn.Width = 60;

            grdToaThuoc.Columns.Add(checkBoxColumn);

            DataGridViewComboBoxColumn col1 = new DataGridViewComboBoxColumn();
            col1.Width = 130;
            col1.HeaderText = "Tên Thuốc";
            col1.DataSource = _shareEntityDao.LoadThongTinThuocForKhamBenh();
            col1.DisplayMember = "MedicineName";
            col1.ValueMember = "MedicineID";
            col1.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(col1);

            //DataGridViewTextBoxColumn tenThuocColumn = new DataGridViewTextBoxColumn();
            //tenThuocColumn.HeaderText = "Tên thuốc";
            //tenThuocColumn.ReadOnly = true;
            //tenThuocColumn.Width = 130;
            //tenThuocColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            //grdToaThuoc.Columns.Add(tenThuocColumn);

            DataGridViewComboBoxColumn col = new DataGridViewComboBoxColumn();
            col.Width = 130;
            col.HeaderText = "Mã thuốc";
            col.DataSource = _shareEntityDao.LoadThongTinThuocForKhamBenh();
            col.DisplayMember = "MaThuocYTeHienThi";
            col.ValueMember = "MedicineID";
            col.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(col);
            // grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);

            

            DataGridViewCheckBoxColumn baoHiemColumn = new DataGridViewCheckBoxColumn();
            baoHiemColumn.Width = 120;
            baoHiemColumn.HeaderText = "Thuốc BH";
            baoHiemColumn.ReadOnly = true;
            baoHiemColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(baoHiemColumn);

            DataGridViewTextBoxColumn donViTinhColumn = new DataGridViewTextBoxColumn();
            donViTinhColumn.Width = 130;
            donViTinhColumn.HeaderText = "Đơn vị tính";
            donViTinhColumn.ReadOnly = true;
            donViTinhColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(donViTinhColumn);

            DataGridViewTextBoxColumn hamLuongColumn = new DataGridViewTextBoxColumn();
            hamLuongColumn.Width = 130;
            hamLuongColumn.HeaderText = "Hàm lượng";
            hamLuongColumn.ReadOnly = false;
            hamLuongColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(hamLuongColumn);

            DataGridViewTextBoxColumn soLuongColumn = new DataGridViewTextBoxColumn();
            soLuongColumn.Width = 130;
            soLuongColumn.HeaderText = "Số lượng";
            soLuongColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(soLuongColumn);

            DataGridViewTextBoxColumn giaColumn = new DataGridViewTextBoxColumn();
            giaColumn.Width = 90;
            giaColumn.HeaderText = "Giá";
            giaColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            //giaColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(giaColumn);
            /*
            DataGridViewComboBoxColumn cachUongColumn = new DataGridViewComboBoxColumn();
            cachUongColumn.Width = 130;
            cachUongColumn.HeaderText = "Cách uống";
            cachUongColumn.DataSource = _shareEntityDao.LoadThongTinCachUongThuoc();
            cachUongColumn.DisplayMember = "CachUong";
            cachUongColumn.ValueMember = "MaUongThuoc";
            cachUongColumn.ReadOnly = false;
            cachUongColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(cachUongColumn);
            */
            DataGridViewTextBoxColumn cachUongColumn = new DataGridViewTextBoxColumn();
            cachUongColumn.Width = 80;
            cachUongColumn.HeaderText = "Cách dùng";
            cachUongColumn.ReadOnly = false;
            cachUongColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(cachUongColumn);


            DataGridViewTextBoxColumn cachDungColumn = new DataGridViewTextBoxColumn();
            cachDungColumn.Width = 130;
            cachDungColumn.HeaderText = "Chi tiết";
            cachDungColumn.ReadOnly = false;
            cachDungColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(cachDungColumn);

            DataGridViewTextBoxColumn thanhTienColumn = new DataGridViewTextBoxColumn();
            thanhTienColumn.Width = 80;
            thanhTienColumn.HeaderText = "Thành tiến";
            thanhTienColumn.ReadOnly = true;
            thanhTienColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(thanhTienColumn);

            DataGridViewTextBoxColumn maCSGColumn = new DataGridViewTextBoxColumn();
            maCSGColumn.Width = 0;
            maCSGColumn.Visible = false;
            maCSGColumn.SortMode = DataGridViewColumnSortMode.NotSortable;
            grdToaThuoc.Columns.Add(maCSGColumn);

            grdToaThuoc.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellEndEdit);
            grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);
            grdToaThuoc.CellValueChanged += grdToaThuoc_CellValueChanged;
            //grdToaThuoc.CellClick += grdToaThuoc_CellDoubleClick;
            int rowIndex = this.grdToaThuoc.Rows.Add(1);
            var row = this.grdToaThuoc.Rows[rowIndex];



        }

        private void chkQuyetDinh_CheckedChanged(object sender, EventArgs e)
        {
            btnQuyetDinh.Enabled = true;
        }

        private void lblTongThanhTien_Click(object sender, EventArgs e)
        {

        }
        public void SetThoiGianNghiPhepStart(DateTime value)
        {
            txtTuNgay.Text = value.ToString(System.Configuration.ConfigurationManager.AppSettings["DateFormat"]); ;
        }
        public void SetThoiGianNghiPhepEnd(DateTime value)
        {
            txtDenNgay.Text = value.ToString(System.Configuration.ConfigurationManager.AppSettings["DateFormat"]);
        }
        public void SetSoNgayDuocNghi(int? value)
        {
            txtSndn.Text = value.ToString();
        }
        public void SetLyDo(string value)
        {
            txtLyDo.Text = value;
        }
        public void SetDIenGiai(string value)
        {
            txtDienGiaiQDNghi.Text = value;
        }
        private void btnQuyetDinh_Click(object sender, EventArgs e)
        {
            frmNghiPhep a = new frmNghiPhep();
            a.SetParentForm(this);
            a.Show();
        }

        private void cbbNhomBenh_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtChanDoan.Text = this.cbbNhomBenh.GetItemText(this.cbbNhomBenh.SelectedItem);
        }

        private void cbbMaICD_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDienGiaiICD.Text = cbbMaICD.Text; //this.cbbMaICD.GetItemText(this.cbbMaICD.SelectedValue);
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            try
            {


                if (string.IsNullOrEmpty(txtTongThanhTien.Text))
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidDonThuoc"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (string.IsNullOrEmpty(txtMaNhanVien.Text) && string.IsNullOrEmpty(txtBenhNhan.Text))
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidThongTinNhanVien"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Waring"), clsResources.GetMessage("messages.frmKhamBenh.Title"), MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                if (result == DialogResult.Yes)
                {
                    btnLuuIn.Enabled = true;
                    btnLuuIn.Enabled = true;
                    grpThongTinKhamBenh.Enabled = false;
                    btnXoaThuoc.Enabled = false;
                    listCurrentTransactions = new List<ThongTinGiaoDich>();
                    ThongTinKhamBenh ttkb = BuildThongTinKhamBenh();
                    if (ttkb != null)
                    {
                        List<ThongTinGiaoDich> listTransaction = _thongTinKhamBenhDao.XacNhanThongTinKhamBenh(ttkb);
                        if (listTransaction != null && listTransaction.Count > 0)
                        {
                            //DialogResult result1 = MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Success"), clsResources.GetMessage("messages.frmKhamBenh.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                            grdToaThuoc.ReadOnly = true;
                            btnXacNhan.Enabled = false;
                            listCurrentTransactions = listTransaction;
                            //MessageBox.Show("Xác nhận thành công");
                            return;
                        }
                        else
                        {
                            //MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Error"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            MessageBox.Show("Không Thể Xác nhận");
                            return;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex.Message, ex);
            }
        }

        private void btnLuuIn_Click(object sender, EventArgs e)
        {


            if (_thongTinKhamBenhDao.ProcessGiaoDichKhamBenh(listCurrentTransactions))
            {
                MessageBox.Show("Lưu thành công");
                grdToaThuoc.ReadOnly = true;
                btnLuuIn.Enabled = false;

                string maKhamBenh = _thongTinKhamBenhDao.GetMaKhamBenhForPrint(listCurrentTransactions[0].MaTransaction);


                ReportInDonThuocFull frmChild = new ReportInDonThuocFull(maKhamBenh);
                //  frmChild.maKhamBenh = maKhamBenh;
                frmChild.Show();

                ReportInDonThuocBH frmChildBh = new ReportInDonThuocBH(maKhamBenh);
                frmChildBh.Show();

                return;
            }
            else
            {
                MessageBox.Show("Có lỗi trong khi lưu");
                return;
            }



            /*
            if (string.IsNullOrEmpty(txtTongThanhTien.Text))
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidDonThuoc"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(txtMaNhanVien.Text) && string.IsNullOrEmpty(txtBenhNhan.Text))
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidThongTinNhanVien"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }*/
            //MessageBox.Show(_thongTinKhamBenhDao.GenerateNewMaKhamKhamBenh());
            /*
            ThongTinKhamBenh ttkb = BuildThongTinKhamBenh();
            if(ttkb != null ){
                if (_thongTinKhamBenhDao.SaveThongTinKhamBenh(ttkb))
                {
                    DialogResult result =  MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Success"), clsResources.GetMessage("messages.frmKhamBenh.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (result == DialogResult.OK)
                    {
                        grdToaThuoc.Rows.Clear();
                        grdToaThuoc.Rows.Add(1);
                        txtTongThanhTien.Text = string.Empty;
                        txtBenhNhan.Text = string.Empty;
                        txtMaNhanVien.Text = string.Empty;
                        grpThongTinKhamBenh.Enabled = true;
                        btnXoaThuoc.Enabled = true;
                    }
                    return;
                }
                else
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Error"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
             * */
        }
        public void SetQuyetDinhNghiPhep(QuyetDinhNghiPhep qd)
        {
            this.quyetDinhNghiPhep = qd;
        }

        private ThongTinKhamBenh BuildThongTinKhamBenh()
        {
            List<string> listmaThuoc = new List<string>();
            Dictionary<CustomKey, string> dic = _shareEntityDao.BuildTuDienThuoc();
            ThongTinKhamBenh thongTinKhamBenh = new ThongTinKhamBenh();
            thongTinKhamBenh.MaKhamBenh = _thongTinKhamBenhDao.GenerateNewMaKhamKhamBenh();
            thongTinKhamBenh.PhongKhamBenh = cbbPhongKham.SelectedValue.ToString();
            thongTinKhamBenh.NgayKhamBenh = dtpNgayKham.Value;
            thongTinKhamBenh.BenhNhan = txtBenhNhan.Text;
            thongTinKhamBenh.MaBenhNhan = txtMaNhanVien.Text;
            thongTinKhamBenh.MaBHYT = txtMaBHYT.Text;
            thongTinKhamBenh.GioiTinh = cbbGioiTinh.GetItemText(cbbGioiTinh.SelectedItem);
            thongTinKhamBenh.NamSinh = txtNamSinh.Text;
            thongTinKhamBenh.BoPhan = cbbBoPhan.GetItemText(cbbBoPhan.SelectedItem);
            thongTinKhamBenh.CongTy = txtCongTy.Text;
            thongTinKhamBenh.KhuVuc = cbbKhuVuc.GetItemText(cbbKhuVuc.SelectedItem);
            thongTinKhamBenh.NhomBenh = cbbNhomBenh.GetItemText(cbbNhomBenh.SelectedItem);
            thongTinKhamBenh.ChuanDoan = txtChanDoan.Text;
            thongTinKhamBenh.QuyetDinhNghi = chkQuyetDinh.Checked;
            thongTinKhamBenh.MaICD = ((MaICD)cbbMaICD.SelectedItem).Ma;
            thongTinKhamBenh.DienGiaiICD = txtDienGiaiICD.Text;
            thongTinKhamBenh.TongTien = txtTongThanhTien.Text;
            if (quyetDinhNghiPhep != null)
                thongTinKhamBenh.QuyetDinhNghiPhep = quyetDinhNghiPhep;
            else
            {
                quyetDinhNghiPhep = new QuyetDinhNghiPhep();
                quyetDinhNghiPhep.TuNgay = null;
                quyetDinhNghiPhep.DenNgay = null;
                quyetDinhNghiPhep.LyDo = string.Empty;
                quyetDinhNghiPhep.LyDoChiTiet = string.Empty;
                quyetDinhNghiPhep.DienGiai = string.Empty;
                quyetDinhNghiPhep.SoNgayNghi = null;
                quyetDinhNghiPhep.ChuThich = string.Empty;
                thongTinKhamBenh.QuyetDinhNghiPhep = quyetDinhNghiPhep;
            }

            if (grdToaThuoc.Rows.Count > 0)
            {
                List<ThongTinDonThuocKhamBenh> listDonThuoc = new List<ThongTinDonThuocKhamBenh>();
                for (int i = 0; i < grdToaThuoc.Rows.Count; i++)
                {

                    ThongTinDonThuocKhamBenh thongTinDonThuoc = new ThongTinDonThuocKhamBenh();
                    if ((string)grdToaThuoc.Rows[i].Cells[1].FormattedValue == "")
                        continue;
                    thongTinDonThuoc.TenThuoc = (string)grdToaThuoc.Rows[i].Cells[1].FormattedValue;
                    thongTinDonThuoc.MaThuoc = (string)grdToaThuoc.Rows[i].Cells[2].FormattedValue;
                    thongTinDonThuoc.ThuocBH = (bool)grdToaThuoc.Rows[i].Cells[3].FormattedValue;
                    thongTinDonThuoc.DonViTinh = (string)grdToaThuoc.Rows[i].Cells[4].FormattedValue;
                    thongTinDonThuoc.HamLuong = (string)grdToaThuoc.Rows[i].Cells[9].FormattedValue;
                    thongTinDonThuoc.MaChinhSachGia = (string)grdToaThuoc.Rows[i].Cells[11].FormattedValue;

                    CustomKey ck = new CustomKey(thongTinDonThuoc.MaThuoc, (bool)grdToaThuoc.Rows[i].Cells[3].FormattedValue);
                    thongTinDonThuoc.MaThuoc = dic[ck];
                    try
                    {
                        long checkSoluong = long.Parse((string)grdToaThuoc.Rows[i].Cells[6].FormattedValue);
                        thongTinDonThuoc.SoLuong = checkSoluong;
                        //messages.frmKhamBenh.CheckSoLuongTrongKho
                        if (checkSoluong <= 0)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong") + " với thuốc "+ thongTinDonThuoc.TenThuoc, clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return null;
                        }
                        if( _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(thongTinDonThuoc.MaThuoc, checkSoluong, cbbPhongKham.SelectedValue.ToString()) < 0)
                        {

                            MessageBox.Show("Thuốc " + thongTinDonThuoc.TenThuoc + clsResources.GetMessage("messages.frmKhamBenh.CheckSoLuongTrongKho"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return null;
                        }
                    }
                    catch
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong") + " với thuốc " + thongTinDonThuoc.TenThuoc, clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    string gia = (string)grdToaThuoc.Rows[i].Cells[7].FormattedValue;
                    decimal currentGia = 0;
                    try
                    {
                        currentGia = decimal.Parse(gia);
                        thongTinDonThuoc.Gia = currentGia;
                    }
                    catch
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidGia") + " với thuốc " + thongTinDonThuoc.TenThuoc, clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    thongTinDonThuoc.CachUong = (string)grdToaThuoc.Rows[i].Cells[8].FormattedValue;
                    //thongTinDonThuoc.ThanhTien = (decimal)grdToaThuoc.Rows[i].Cells[9].FormattedValue;
                    string thanhTien = (string)grdToaThuoc.Rows[i].Cells[10].FormattedValue;
                    thongTinDonThuoc.ThanhTien = decimal.Parse(thanhTien);
                    thongTinDonThuoc.MaKhamBenh = thongTinKhamBenh.MaKhamBenh;
                    //if ((bool)grdToaThuoc.Rows[i].Cells[0].FormattedValue)
                    //{
                    //    grdToaThuoc.Rows.RemoveAt(i);
                    //}
                    if (!listmaThuoc.Contains(thongTinDonThuoc.MaThuoc))
                    {
                        listmaThuoc.Add(thongTinDonThuoc.MaThuoc);
                    }
                    else
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckTrungLapThuoc") + " với thuốc " + thongTinDonThuoc.TenThuoc, clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    listDonThuoc.Add(thongTinDonThuoc);
                }
                thongTinKhamBenh.ThongTinToaThuoc = listDonThuoc;
            }

            return thongTinKhamBenh;
        }

        private void btnXoaThuoc_Click(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(txtMaNhanVien.Text))
            //{
                for (int i = grdToaThuoc.Rows.Count - 1; i > 0; i--)
                {
                    if ((bool)grdToaThuoc.Rows[i].Cells[0].FormattedValue)
                    {
                        grdToaThuoc.Rows.RemoveAt(i);
                        CalculateTotal();
                    }
                }
            //}
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();


            //string maKhamBenh = _thongTinKhamBenhDao.GetMaKhamBenhForPrint(listCurrentTransactions[0].MaTransaction);
            //ReportInDonThuocFull frmChild = new ReportInDonThuocFull(maKhamBenh);

            //frmChild.Show();


        }

        private void grdToaThuoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


        private void grdToaThuoc_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {

            currentCell = this.grdToaThuoc.CurrentCell;
            // thay doi so luong thuoc
            if (currentCell != null && currentCell.ColumnIndex == 6)
            {
                int currentSoLuong = 0;
                bool isValidMaThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value != null && this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString() != "";
                bool isValidSoLuongThuoc = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null && this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString() != "";
               // if (isValidMaThuoc && isValidSoLuongThuoc)
                if (isValidMaThuoc)
                {
                    try
                    {
                        currentSoLuong = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null ? int.Parse(this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString()) : 0;
                       /* if (currentSoLuong <= 0)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        //check thuoc trong kho
                        if (isValidSoLuongThuoc)
                        {
                            string maThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString();
                            int soLuongThuocTrongKho = _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(maThuoc, currentSoLuong, cbbPhongKham.SelectedValue.ToString());
                            if (soLuongThuocTrongKho < 0)
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckSoLuongTrongKho"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        }*/
                    }
                    catch
                    {
                        /*
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                         */
                        currentSoLuong = 0;
                    }
                }

                decimal currentGia = 0;
                try
                {
                    currentGia = this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value != null ? decimal.Parse(this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value.ToString()) : 0;

                }
                catch
                {
                    currentGia = 0;
                }
                /*
                if (currentGia <= 0)
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidGia"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                 */
                decimal currentTienThuoc = currentSoLuong * currentGia;
                // MessageBox.Show("CellChange" + currentTienThuoc.ToString());
                this.grdToaThuoc[currentCell.ColumnIndex + 4, currentCell.RowIndex].Value = currentTienThuoc.ToString();
                CalculateTotal();
            }
            //Thay doi gia thuoc
            if (currentCell != null && currentCell.ColumnIndex == 7)
            {
                int currentSoLuong = 0;
                bool isValidMaThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value != null && this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString() != "";
                bool isValidSoLuongThuoc = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null && this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value.ToString() != "";
                decimal currentGia = 0;
                try
                {
                    currentGia = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null ? decimal.Parse(this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString()) : 0;

                }
                catch
                {
                    currentGia = 0;
                }
                /*
                if (currentGia <= 0)
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidGia"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                */
                //if (isValidMaThuoc && isValidSoLuongThuoc)
                if (isValidMaThuoc)
                {
                    try
                    {
                        currentSoLuong = this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value != null ? int.Parse(this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value.ToString()) : 0;
                        /*if (currentSoLuong <= 0)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        //check thuoc trong kho
                        if (isValidSoLuongThuoc)
                        {
                            string maThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString();
                            int soLuongThuocTrongKho = _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(maThuoc, currentSoLuong, cbbPhongKham.SelectedValue.ToString());
                            if (soLuongThuocTrongKho < 0)
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckSoLuongTrongKho"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        } */
                    }
                    catch
                    {
                        /*
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                        */
                        currentSoLuong = 0;
                    }
                }


                decimal currentTienThuoc = currentSoLuong * currentGia;
                // MessageBox.Show("CellChange" + currentTienThuoc.ToString());
                this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value = currentTienThuoc.ToString();
                CalculateTotal();
            }

        }


        private void CalculateTotal()
        {
            decimal total = 0;

            foreach (DataGridViewRow row in grdToaThuoc.Rows)
            {
                if (row.Cells[10].Value != null)
                {
                    total += decimal.Parse(row.Cells[10].Value.ToString());
                }
            }

            txtTongThanhTien.Text = total.ToString();
        }

        void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (cbm != null)
            {
                // Here we will remove the subscription for selected index changed
                cbm.SelectedIndexChanged -= new EventHandler(cbm_SelectedIndexChanged);
            }
        }

        void dataGridView1_EditingControlShowing(object sender, DataGridViewEditingControlShowingEventArgs e)
        {
            //string titleText = grdToaThuoc.Columns[8].HeaderText;
            int columnIndex = 0;
            currentCell = this.grdToaThuoc.CurrentCell;
            if (currentCell != null)
                columnIndex = currentCell.ColumnIndex;
            // Here try to add subscription for selected index changed event
            if (e.Control is ComboBox)
            {
                cbm = (ComboBox)e.Control;

                if (cbm != null)
                {
                    cbm.DropDownStyle = ComboBoxStyle.DropDown;
                    cbm.AutoCompleteSource = AutoCompleteSource.ListItems;
                    cbm.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
                    //if(currentCell != null && currentCell.ColumnIndex == 8)
                    //{
                    //    MessageBox.Show((string)this.grdToaThuoc[8, currentCell.RowIndex].Value.ToString());
                    //}
                    cbm.SelectedIndexChanged += new EventHandler(cbm_SelectedIndexChanged);
                }
                currentCell = this.grdToaThuoc.CurrentCell;
            }

            if (columnIndex == 8)
            {
                System.Windows.Forms.TextBox autoText = e.Control as System.Windows.Forms.TextBox;
                if (autoText != null)
                {
                    autoText.AutoCompleteMode = AutoCompleteMode.Suggest;
                    autoText.AutoCompleteSource = AutoCompleteSource.CustomSource;
                    AutoCompleteStringCollection DataCollection = new AutoCompleteStringCollection();
                    addItems(DataCollection);
                    autoText.AutoCompleteCustomSource = DataCollection;
                }
            }
            //if (e.Control is System.Windows.Forms.TextBox)
            //{
            //    System.Windows.Forms.TextBox tb = (System.Windows.Forms.TextBox)e.Control;

            //    tb.KeyPress += new KeyPressEventHandler(Control_KeyPress);

            //}
        }
        public void addItems(AutoCompleteStringCollection col)
        {
            List<CachUongThuoc> listCachUongThuoc = _shareEntityDao.LoadThongTinCachUongThuoc();
            for (int i = 0; i < listCachUongThuoc.Count; i++)
            {
                col.Add(listCachUongThuoc[i].CachUong);
            }
        }

        void cbm_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Invoke method if the selection changed event occurs
            BeginInvoke(new MethodInvoker(EndEdit));
        }
        void TinhTienThuoc()
        {
            if (currentCell != null)
            {
                int currentSoLuong = 0;
                bool isValidMaThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value != null && this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString() != "";
                bool isValidSoLuongThuoc = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null && this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString() != "";
                //if (isValidMaThuoc && isValidSoLuongThuoc)
                if (isValidMaThuoc)
                {
                    try
                    {
                        currentSoLuong = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null ? int.Parse(this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString()) : 0;
                        /*
                        if (currentSoLuong <= 0)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        //check thuoc trong kho
                        if (isValidSoLuongThuoc)
                        {
                            string maThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString();
                            int soLuongThuocTrongKho = _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(maThuoc, currentSoLuong, cbbPhongKham.SelectedValue.ToString());
                            if (soLuongThuocTrongKho < 0)
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckSoLuongTrongKho"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        }*/
                    }
                    catch
                    {
                        //MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        //return;
                        currentSoLuong = 0;
                    }
                }

                decimal currentGia = 0;
                try
                {
                    currentGia = this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value != null ? decimal.Parse(this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value.ToString()) : 0;

                }
                catch
                {
                    currentGia = 0;
                }
                /*
                if (currentGia <= 0)
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidGia"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                */
                decimal currentTienThuoc = currentSoLuong * currentGia;
                // MessageBox.Show("CellChange" + currentTienThuoc.ToString());
                this.grdToaThuoc[10, currentCell.RowIndex].Value = currentTienThuoc.ToString();
                CalculateTotal();
            }
        }
        void EndEdit()
        {
            // Change the content of appropriate cell when selected index changes
            if (cbm != null)
            {

                if (currentCell != null && currentCell.ColumnIndex == 1)
                {
                    ThongTinThuoc ttt = cbm.SelectedItem as ThongTinThuoc;
                    //DataRowView drv = cbm.SelectedItem as DataRowView;
                    if (ttt != null)
                    {
                        if (currentCell.ColumnIndex == 1)
                        {
                            if (!danhSachThuoc.ContainsKey(currentCell.RowIndex) && !danhSachThuoc.ContainsValue(ttt.MedicineID))
                            {
                                danhSachThuoc.Add(currentCell.RowIndex, ttt.MedicineID);
                            }
                            else if (danhSachThuoc.ContainsKey(currentCell.RowIndex))
                            {
                                danhSachThuoc.Remove(currentCell.RowIndex);
                                danhSachThuoc.Add(currentCell.RowIndex, ttt.MedicineID);
                            }
                            else
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckTrungLapThuoc1"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                           // this.grdToaThuoc[currentCell.ColumnIndex - 2, currentCell.RowIndex].Value = ttt.MedicineName;
                            this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value = ttt.MedicineID;
                            this.grdToaThuoc[currentCell.ColumnIndex + 2, currentCell.RowIndex].Value = ttt.BaoHiem;
                            this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value = ttt.TenDonViTinh;
                            this.grdToaThuoc[currentCell.ColumnIndex + 4, currentCell.RowIndex].Value = ttt.HamLuong;
                            this.grdToaThuoc[currentCell.ColumnIndex + 6, currentCell.RowIndex].Value = ttt.GiaDNBanVAT;
                            this.grdToaThuoc[currentCell.ColumnIndex + 7, currentCell.RowIndex].Value = ttt.CachUongThuoc;
                            this.grdToaThuoc[currentCell.ColumnIndex + 8, currentCell.RowIndex].Value = ttt.CachDungChiTiet;
                            this.grdToaThuoc[currentCell.ColumnIndex + 10, currentCell.RowIndex].Value = ttt.MaChinhSachGia;
                            TinhTienThuoc();
                        }
                        if (currentCell.ColumnIndex == 1 && (currentCell.RowIndex == grdToaThuoc.Rows.Count - 1))
                        {
                            grdToaThuoc.Rows.Add(1);
                        }

                    }
                }
                if (currentCell != null && currentCell.ColumnIndex == 2)
                {
                    ThongTinThuoc ttt = cbm.SelectedItem as ThongTinThuoc;
                    //DataRowView drv = cbm.SelectedItem as DataRowView;
                    if (ttt != null)
                    {
                        //  string item = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString();
                        if (currentCell.ColumnIndex == 2)
                        {
                            //     MessageBox.Show(ttt.MedicineName);
                            if (!danhSachThuoc.ContainsKey(currentCell.RowIndex) && !danhSachThuoc.ContainsValue(ttt.MedicineID))
                            {
                                danhSachThuoc.Add(currentCell.RowIndex, ttt.MedicineID);
                            }
                            else if (danhSachThuoc.ContainsKey(currentCell.RowIndex))
                            {
                                danhSachThuoc.Remove(currentCell.RowIndex);
                                danhSachThuoc.Add(currentCell.RowIndex, ttt.MedicineID);
                            }
                            else
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckTrungLapThuoc1"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                            this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value = ttt.MedicineID;
                            this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value = ttt.BaoHiem;
                            this.grdToaThuoc[currentCell.ColumnIndex + 2, currentCell.RowIndex].Value = ttt.TenDonViTinh;
                            this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value = ttt.HamLuong;
                            this.grdToaThuoc[currentCell.ColumnIndex + 5, currentCell.RowIndex].Value = ttt.GiaDNBanVAT;
                            this.grdToaThuoc[currentCell.ColumnIndex + 6, currentCell.RowIndex].Value = ttt.CachUongThuoc;
                            this.grdToaThuoc[currentCell.ColumnIndex + 7, currentCell.RowIndex].Value = ttt.CachDungChiTiet;
                            this.grdToaThuoc[currentCell.ColumnIndex + 9, currentCell.RowIndex].Value = ttt.MaChinhSachGia;
                            TinhTienThuoc();
                        }
                        
                        if (currentCell.ColumnIndex == 2 && (currentCell.RowIndex == grdToaThuoc.Rows.Count - 1))
                        {
                            grdToaThuoc.Rows.Add(1);
                        }

                    }
                }
               




            }
        }

        private void btnSearch_Click_1(object sender, EventArgs e)
        {
            frmSearchNhanVien a = new frmSearchNhanVien();
            a.SetParentForm(this);
            a.Show();
        }

        private void btnTiepTucKham_Click(object sender, EventArgs e)
        {
            grdToaThuoc.Rows.Clear();
            grdToaThuoc.Rows.Add(1);
            txtTongThanhTien.Text = string.Empty;
            txtBenhNhan.Text = string.Empty;
            txtMaNhanVien.Text = string.Empty;
            grpThongTinKhamBenh.Enabled = true;
            btnXoaThuoc.Enabled = true;
            grdToaThuoc.ReadOnly = false;
            btnXacNhan.Enabled = true;
            btnLuuIn.Enabled = false;
            btnLuuIn.Enabled = false;
            txtMaBHYT.Text = string.Empty;
        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            try
            {
                string maKhamBenh = _thongTinKhamBenhDao.GetMaKhamBenhForPrint(listCurrentTransactions[0].MaTransaction);
                ReportInDonThuocFull frmChild = new ReportInDonThuocFull(maKhamBenh);
                frmChild.Show();

                ReportInDonThuocBH frmChildBh = new ReportInDonThuocBH(maKhamBenh);
                frmChildBh.Show();
            }
            catch (Exception ex)
            {
                Log.Error(ex.Message, ex);
            }

        }



    }
}
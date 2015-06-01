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
        QuyetDinhNghiPhep quyetDinhNghiPhep ;
        private Dictionary<int, string> danhSachThuoc = new Dictionary<int, string>();
        readonly System.Data.DataTable _dt = null;
        ComboBox cbm;
        DataGridViewCell currentCell;
        
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

        #region Constructors

        public frmKhambenh()
        {

            InitializeComponent();

            clsTitleManager.InitTitle(this);
            GetParam();
            SetDefauldValue();
            this.Text = "KHÁM BỆNH CÓ BẢO HIỂM";

            // Save original columns
           // _originalColumns = new DataGridViewColumn[grdStores.Columns.Count;
           // grdStores.Columns.CopyTo(_originalColumns, 0);
           // grdStores.Sorted += grdStores_Sorted;
        }

        void grdStores_Sorted(object sender, EventArgs e)
        {
            this.ProcessDataRow();
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
            txtBenhNhan.ReadOnly = true;
            txtMaBHYT.ReadOnly = true;
            txtNamSinh.ReadOnly = true;
            txtCongTy.ReadOnly = true;
            cbbBoPhan.Enabled = false;
            cbbGioiTinh.Enabled = false;
            cbbKhuVuc.Enabled = false;
            cbbPhongKham.Enabled = false;
        }
        private void LoadThongTinBenhNhan()
        {
            ThongTinBenhNhan ttBenhNhan =  _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            txtBenhNhan.Text = ttBenhNhan.FullName;
            txtMaNhanVien.Text = ttBenhNhan.EmployeeID;
            txtMaBHYT.Text = ttBenhNhan.MaBHYT;
            txtNamSinh.Text = ttBenhNhan.NamSinh.ToString() ;
            txtCongTy.Text = "Unilever";
            cbbBoPhan.SelectedValue = ttBenhNhan.BoPhan;
            cbbGioiTinh.SelectedText = ttBenhNhan.GioiTinh;
            cbbKhuVuc.SelectedText = ttBenhNhan.KhuVuc;
        }
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
                else {
                    txtBenhNhan.BackColor = Color.Red;
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
                txtBenhNhan.BackColor = Color.Red;
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
            //cbbPhongKham.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            //cbbPhongKham.AutoCompleteSource = AutoCompleteSource.ListItems; 
            List<PhongKham> listPhongKham = _shareEntityDao.LoadDanhSachPhongKham();
            cbbPhongKham.DataSource = listPhongKham;
            string currentKho = System.Configuration.ConfigurationManager.AppSettings["RCLINIC00001"];
            int currentIndex = listPhongKham.FindIndex(a => a.RoomName == currentKho);
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

            DataGridViewTextBoxColumn tenThuocColumn = new DataGridViewTextBoxColumn();
            tenThuocColumn.HeaderText = "Tên thuốc";
            tenThuocColumn.ReadOnly = true;
            tenThuocColumn.Width = 130;
            grdToaThuoc.Columns.Add(tenThuocColumn);

            DataGridViewComboBoxColumn col = new DataGridViewComboBoxColumn();
            col.Width = 130;
            col.HeaderText = "Mã thuốc";
            col.DataSource = _shareEntityDao.LoadThongTinThuoc();
            col.DisplayMember = "MedicineID";
            col.ValueMember = "MedicineID";
            grdToaThuoc.Columns.Add(col);
           // grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);

           

            DataGridViewCheckBoxColumn baoHiemColumn = new DataGridViewCheckBoxColumn();
            baoHiemColumn.Width = 120;
            baoHiemColumn.HeaderText = "Thuốc BH";
            baoHiemColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(baoHiemColumn);

            DataGridViewTextBoxColumn donViTinhColumn = new DataGridViewTextBoxColumn();
            donViTinhColumn.Width = 130;
            donViTinhColumn.HeaderText = "Đơn vị tính";
            donViTinhColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(donViTinhColumn);

            DataGridViewTextBoxColumn hamLuongColumn = new DataGridViewTextBoxColumn();
            hamLuongColumn.Width = 130;
            hamLuongColumn.HeaderText = "Hàm lượng";
            hamLuongColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(hamLuongColumn);

            DataGridViewTextBoxColumn soLuongColumn = new DataGridViewTextBoxColumn();
            soLuongColumn.Width = 130;
            soLuongColumn.HeaderText = "Số lượng";
            grdToaThuoc.Columns.Add(soLuongColumn);

            DataGridViewTextBoxColumn giaColumn = new DataGridViewTextBoxColumn();
            giaColumn.Width = 130;
            giaColumn.HeaderText = "Giá";
            giaColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(giaColumn);

            DataGridViewComboBoxColumn cachUongColumn = new DataGridViewComboBoxColumn();
            cachUongColumn.Width = 130;
            cachUongColumn.HeaderText = "Cách uống";
            cachUongColumn.DataSource = _shareEntityDao.LoadThongTinCachUongThuoc();
            cachUongColumn.DisplayMember = "CachUong";
            cachUongColumn.ValueMember = "MaUongThuoc";
            grdToaThuoc.Columns.Add(cachUongColumn);

            DataGridViewTextBoxColumn thanhTienColumn = new DataGridViewTextBoxColumn();
            thanhTienColumn.Width = 130;
            thanhTienColumn.HeaderText = "Thành tiến";
            thanhTienColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(thanhTienColumn);
            grdToaThuoc.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellEndEdit);
            grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);
            grdToaThuoc.CellValueChanged += grdToaThuoc_CellValueChanged;
            int rowIndex = this.grdToaThuoc.Rows.Add(1);
            var row = this.grdToaThuoc.Rows[rowIndex];



        }

        private void BindTeamLead()
        {

        }

        private void BindShift()
        {
        }

        private void BindOnOff()
        {
        }

        private void BindStatus()
        {

        }

        private void SetDefauldFilterTime()
        {
        }

        private void BindYear()
        {

        }

        private void SetFromToDate()
        {
        }

        private void BindWeek()
        {
        }

        private void BindMonth()
        {
        }

        private void InitControls()
        {
           
        }



        private void OnSearchLichLamViec()
        {
            
        }


        private void OnGridDataSourceChanged()
        {
         
        }

        private bool OnSaveClick()
        {
        
            return true;

        }
        public string ValidatedDateToSave()
        {
          
            return "";
        }

        public List<ClsLichLamViec> GetDataToSave()
        {
            var lstLichLamViec = new List<ClsLichLamViec>();
            return lstLichLamViec;
        }



        private bool IsDisplayRegistrationCell(DataGridViewCell cell)
        {
            // Current cell belong to Original colums (store information columns)
            return true;

            // Current cell belong to display registration columns
        }


        private void Export()
        {
        }





        #endregion

      ///  #region Handle events

        private void btnSearch_Click(object sender, EventArgs e)
        {
           // SearchData();
        }
        

        private void BindDataToGrid()
        {
            //this.OnSearchLichLamViec();
            //this.ProcessDataRow();
        }



        private void ProcessDataRow()
        {
        

        }

        private void grdStores_DataSourceChanged(object sender, EventArgs e)
        {
            //this.OnGridDataSourceChanged();
        }

        private void grdStore_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {

        }

       
        private void btnSave_Click(object sender, EventArgs e)
        {
           
        }

        private void frmEditStore_Load(object sender, EventArgs e)
        {
            //InitControls();
        }

        

        /// <summary>
        /// check exchange grid when close form
        /// Creator: Sonlv
        /// Create Date: 23/03/2010
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void frmEditStore_FormClosing(object sender, FormClosingEventArgs e)
        {
            
        }

        private void btnExport_Click(object sender, EventArgs e)
        {
           
        }

        
      //  #endregion

        private void radMonth_CheckedChanged(object sender, EventArgs e)
        {
        }

        private void radWeek_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        private void cboWeek_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cboMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SetFromToDate();
        }






        private void btnApproveSave_Click(object sender, EventArgs e)
        {
        
        }


     

        public List<ClsLichLamViec> GetDataToApproveSave()
        {
            var lstLichLamViec = new List<ClsLichLamViec>();

            return lstLichLamViec;
        }

        private bool OnApprove()
        {
           
            return true;

          
        }

        private void btnSearchTimesheet_Click(object sender, EventArgs e)
        {
            
        }
        public string GetItemToGetTimesheet()
        {
            //const string strSysId = "";

            //var table = grdStores.DataSource as System.Data.DataTable;
            //if (table == null) return strSysId;

            //return table.Rows.Cast<DataRow>().Where(row => (bool)row[ChamCongLichLamViecDAO.L1XacNhan == false && (bool)row[ChamCongLichLamViecDAO.DaLayDuLieuChamCong == false).Aggregate(strSysId, (current, row) => current + "," + row[ChamCongLichLamViecDAO.SysID.ToString());
            return "";
       }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void lblDienGiaiICD_Click(object sender, EventArgs e)
        {

        }

        private void chkQuyetDinh_CheckedChanged(object sender, EventArgs e)
        {
            btnQuyetDinh.Enabled = true;
        }

        private void lblTongThanhTien_Click(object sender, EventArgs e)
        {

        }
        public void SetThoiGianNghiPhepStart(string value)
        {
            txtTuNgay.Text = value;
        }
        public void SetThoiGianNghiPhepEnd(string value)
        {
            txtDenNgay.Text = value;
        }
        public void SetSoNgayDuocNghi(string value)
        {
            txtSndn.Text = value;
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
            txtDienGiaiICD.Text = this.cbbMaICD.GetItemText(this.cbbMaICD.SelectedItem);
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
           // MessageBox.Show(clsResources.GetMessage("messages.save.success"), clsResources.GetMessage("messages.general"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Waring"), clsResources.GetMessage("messages.frmKhamBenh.Title"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            if (result == DialogResult.OK)
            {
                grpThongTinKhamBenh.Enabled = false;
                btnXoaThuoc.Enabled = false;
            }
        }

        private void btnLuuIn_Click(object sender, EventArgs e)
        {
            //MessageBox.Show(_thongTinKhamBenhDao.GenerateNewMaKhamKhamBenh());
            ThongTinKhamBenh ttkb = BuildThongTinKhamBenh();
            if(ttkb != null ){
                if (_thongTinKhamBenhDao.SaveThongTinKhamBenh(ttkb))
                {
                    DialogResult result =  MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Success"), clsResources.GetMessage("messages.frmKhamBenh.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (result == DialogResult.OK)
                    {
                        grdToaThuoc.Rows.Clear();
                        grdToaThuoc.Rows.Add(1);
                    }
                    return;
                }
                else
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.Error"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
        }
        public void SetQuyetDinhNghiPhep(QuyetDinhNghiPhep qd)
        {
            this.quyetDinhNghiPhep = qd;
        }
        private ThongTinKhamBenh BuildThongTinKhamBenh()
        {
            List<string> listmaThuoc = new List<string>();
            ThongTinKhamBenh thongTinKhamBenh = new ThongTinKhamBenh();
            thongTinKhamBenh.MaKhamBenh = _thongTinKhamBenhDao.GenerateNewMaKhamKhamBenh();
            thongTinKhamBenh.PhongKhamBenh = cbbPhongKham.GetItemText(cbbPhongKham.SelectedItem);
            thongTinKhamBenh.NgayKhamBenh = dtpNgayKham.Value;
            thongTinKhamBenh.BenhNhan = txtBenhNhan.Text;
            thongTinKhamBenh.MaBenhNhan = txtMaNhanVien.Text;
            thongTinKhamBenh.MaBHYT = txtMaBHYT.Text;
            thongTinKhamBenh.GioiTinh = cbbGioiTinh.GetItemText(cbbGioiTinh.SelectedItem);
            thongTinKhamBenh.NamSinh = txtNamSinh.Text;
            thongTinKhamBenh.BoPhan =  cbbBoPhan.GetItemText(cbbBoPhan.SelectedItem);
            thongTinKhamBenh.CongTy = txtCongTy.Text;
            thongTinKhamBenh.KhuVuc = cbbKhuVuc.GetItemText(cbbKhuVuc.SelectedItem);
            thongTinKhamBenh.NhomBenh = cbbNhomBenh.GetItemText(cbbNhomBenh.SelectedItem);
            thongTinKhamBenh.ChuanDoan = txtChanDoan.Text;
            thongTinKhamBenh.QuyetDinhNghi = chkQuyetDinh.Checked;
            thongTinKhamBenh.MaICD = cbbMaICD.GetItemText(cbbMaICD.SelectedItem);
            thongTinKhamBenh.DienGiaiICD = txtDienGiaiICD.Text;
            thongTinKhamBenh.TongTien = txtTongThanhTien.Text;
            if (quyetDinhNghiPhep != null)
                thongTinKhamBenh.QuyetDinhNghiPhep = quyetDinhNghiPhep;
            else
            {
                quyetDinhNghiPhep = new QuyetDinhNghiPhep();
                quyetDinhNghiPhep.TuNgay = string.Empty;
                quyetDinhNghiPhep.DenNgay = string.Empty;
                quyetDinhNghiPhep.LyDo = string.Empty;
                quyetDinhNghiPhep.LyDoChiTiet = string.Empty;
                quyetDinhNghiPhep.DienGiai = string.Empty;
                quyetDinhNghiPhep.SoNgayNghi = string.Empty;
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
                    thongTinDonThuoc.MaThuoc  =  (string)grdToaThuoc.Rows[i].Cells[2].FormattedValue;
                    thongTinDonThuoc.ThuocBH =  (bool)grdToaThuoc.Rows[i].Cells[3].FormattedValue == true ? "x": "";
                    thongTinDonThuoc.DonViTinh = (string)grdToaThuoc.Rows[i].Cells[4].FormattedValue;
                    thongTinDonThuoc.HamLuong = (string)grdToaThuoc.Rows[i].Cells[5].FormattedValue;
                    thongTinDonThuoc.SoLuong = (string)grdToaThuoc.Rows[i].Cells[6].FormattedValue;
                    try
                    {
                        int checkSoluong = int.Parse(thongTinDonThuoc.SoLuong);
                        if(checkSoluong <= 0 || _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(thongTinDonThuoc.MaThuoc,checkSoluong) == -1)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return null;
                        }
                    }
                    catch {
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    thongTinDonThuoc.Gia = (string)grdToaThuoc.Rows[i].Cells[7].FormattedValue;
                    thongTinDonThuoc.CachUong = (string)grdToaThuoc.Rows[i].Cells[8].FormattedValue;
                    thongTinDonThuoc.ThanhTien = (string)grdToaThuoc.Rows[i].Cells[9].FormattedValue;
                    thongTinDonThuoc.MaKhamBenh = thongTinKhamBenh.MaKhamBenh;
                    //if ((bool)grdToaThuoc.Rows[i].Cells[0].FormattedValue)
                    //{
                    //    grdToaThuoc.Rows.RemoveAt(i);
                    //}
                    if (!listmaThuoc.Contains(thongTinDonThuoc.MaThuoc))
                    {
                        listmaThuoc.Add(thongTinDonThuoc.MaThuoc);
                    }
                    else {
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckTrungLapThuoc"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            for (int i = grdToaThuoc.Rows.Count - 1; i >= 0; i--)
            {
                if ((bool)grdToaThuoc.Rows[i].Cells[0].FormattedValue)
                {
                    grdToaThuoc.Rows.RemoveAt(i);
                }
            }
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void grdToaThuoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


        private void grdToaThuoc_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            
            currentCell = this.grdToaThuoc.CurrentCell;
            if (currentCell != null && currentCell.ColumnIndex == 6)
            {
                int currentSoLuong = 0;
                bool isValidMaThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value != null && this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString() != "";
                bool isValidSoLuongThuoc = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null && this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString() != "";
                if (isValidMaThuoc && isValidSoLuongThuoc)
                {
                    try
                    {
                        currentSoLuong = this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value != null ? int.Parse(this.grdToaThuoc[currentCell.ColumnIndex, currentCell.RowIndex].Value.ToString()) : 0;
                        if (currentSoLuong <= 0)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        //check thuoc trong kho
                        if (isValidSoLuongThuoc)
                        {
                            string maThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString();
                            int soLuongThuocTrongKho = _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(maThuoc, currentSoLuong);
                            if (soLuongThuocTrongKho == -1)
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckSoLuongTrongKho"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        }
                    }
                    catch {
                        MessageBox.Show(clsResources.GetMessage("messages.frmKhamBenh.CheckValidSoLuong"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                }
                
                double currentGia = this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value != null ? double.Parse(this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value.ToString()) : 0;
                double currentTienThuoc = currentSoLuong * currentGia;
               // MessageBox.Show("CellChange" + currentTienThuoc.ToString());
                this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value = currentTienThuoc.ToString();
                CalculateTotal();
            }
            return;
        }

        private void CalculateTotal()
        {
            double total = 0;

            foreach (DataGridViewRow row in grdToaThuoc.Rows)
            {
                if (row.Cells[9].Value != null)
                {
                    total += double.Parse(row.Cells[9].Value.ToString());
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
            // Here try to add subscription for selected index changed event
            if (e.Control is ComboBox)
            {
                cbm = (ComboBox)e.Control;
                if (cbm != null)
                {
                    cbm.SelectedIndexChanged += new EventHandler(cbm_SelectedIndexChanged);
                }
                currentCell = this.grdToaThuoc.CurrentCell;
            }
            //if (e.Control is System.Windows.Forms.TextBox)
            //{
            //    System.Windows.Forms.TextBox tb = (System.Windows.Forms.TextBox)e.Control;

            //    tb.KeyPress += new KeyPressEventHandler(Control_KeyPress);

            //}
        }
       
        void cbm_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Invoke method if the selection changed event occurs
            BeginInvoke(new MethodInvoker(EndEdit));
        }

        void EndEdit()
        {
            // Change the content of appropriate cell when selected index changes
            if (cbm != null)
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmKhambenh.CheckTrungLapThuoc1"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value = ttt.MedicineName;
                        this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value = ttt.BaoHiem;
                        this.grdToaThuoc[currentCell.ColumnIndex + 2, currentCell.RowIndex].Value = ttt.DonViTinh;
                        this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value = ttt.HamLuong;
                        this.grdToaThuoc[currentCell.ColumnIndex + 5, currentCell.RowIndex].Value = ttt.GiaDNMuaVAT;
                        this.grdToaThuoc[currentCell.ColumnIndex + 6, currentCell.RowIndex].Value = ttt.CachUong;
                    }
                    if (currentCell.ColumnIndex == 2 && (currentCell.RowIndex == grdToaThuoc.Rows.Count - 1))
                    {
                        grdToaThuoc.Rows.Add(1);
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

        
    }
}
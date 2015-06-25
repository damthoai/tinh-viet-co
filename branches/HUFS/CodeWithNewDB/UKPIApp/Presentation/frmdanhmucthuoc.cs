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
    public partial class frmdanhmucthuoc : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmdanhmucthuoc));

        private clsBaseBO _bo = new clsBaseBO();
        private readonly clsCommon _common = new clsCommon();
        private readonly ShareEntityDao _shareEntityDao = new ShareEntityDao();
        //private readonly ThongTinKhamBenhDao _thongTinKhamBenhDao = new ThongTinKhamBenhDao();
        private readonly QuanLyThuocDao _quanLyThuocDao = new QuanLyThuocDao();
        readonly System.Data.DataTable _dt = null;
        ComboBox cbm;
        DataGridViewCell currentCell;
        private DateTimePicker cellDateTimePicker;
        private int _checkRowsCount = 0;
        private Dictionary<int, string> danhSachThuoc = new Dictionary<int, string>();

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

        private List<ThongTinThuoc> listThuoc = new List<ThongTinThuoc>();
        private ThongTinThuoc selectedThuoc;

        // Declare private fields
        private ChamCongLichLamViecBo _lichLamViecBo = new ChamCongLichLamViecBo();

        readonly DataGridViewColumn _originalColumns;
        private DataTable _dtApproveTimesheet;
        int currentRowIndex = -1;
        #endregion

        #region Constructors

        public frmdanhmucthuoc()
        {

            InitializeComponent();
           // grdToaThuoc.AutoGenerateColumns = false;
        //    clsTitleManager.InitTitle(this);
            //this.cellDateTimePicker = new DateTimePicker();
            //this.cellDateTimePicker.Format = DateTimePickerFormat.Custom;
            //this.cellDateTimePicker.CustomFormat = "dd-MM-yyyy";
            //this.cellDateTimePicker.ValueChanged += new EventHandler(cellDateTimePickerValueChanged);
            ////this.cellDateTimePicker.CloseUp += new EventHandler(oDateTimePicker_CloseUp);  
            //this.cellDateTimePicker.Visible = false;
            //this.grdToaThuoc.Controls.Add(cellDateTimePicker);
            
            SetDefauldValue();
            this.Text = "XUẤT KHO THUỐC";
           // Save original columns
           // _originalColumns = new DataGridViewColumn[grdStores.Columns.Count;
           // grdStores.Columns.CopyTo(_originalColumns, 0);
           // grdStores.Sorted += grdStores_Sorted;
        }

        void oDateTimePicker_CloseUp(object sender, EventArgs e)
        {
            // Hiding the control after use   
            cellDateTimePicker.Visible = false;
        } 
        private void SetDefauldValue()
        {
        //    BuildGridViewRow();
            grdToaThuoc.AutoGenerateColumns = false;
            grdToaThuoc.CellDoubleClick += grdToaThuoc_CellDoubleClick;
            btnUpdate.Enabled = false;

            cbbDonViTinh.DataSource = _shareEntityDao.LoadDonViTinh();
            txtNhaSanXuat.AutoCompleteMode = AutoCompleteMode.Suggest;
            txtNhaSanXuat.AutoCompleteSource = AutoCompleteSource.CustomSource;
            AutoCompleteStringCollection nsxDataCollection = new AutoCompleteStringCollection();
            addNhaSanXuatItems(nsxDataCollection);
            txtNhaSanXuat.AutoCompleteCustomSource = nsxDataCollection;

            txtQuocGia.AutoCompleteMode = AutoCompleteMode.Suggest;
            txtQuocGia.AutoCompleteSource = AutoCompleteSource.CustomSource;
            AutoCompleteStringCollection qgDataCollection = new AutoCompleteStringCollection();
            addQUocGiaItems(qgDataCollection);
            txtQuocGia.AutoCompleteCustomSource = qgDataCollection;
            LoadDanhMucThuoc();
        }

        
        private void LoadDanhMucThuoc()
        {
           // ThongTinBenhNhan ttNhanVien = _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            listThuoc =  _quanLyThuocDao.LoadDanhMucThuoc();
            grdToaThuoc.DataSource = listThuoc;



        }
        public void addNhaSanXuatItems(AutoCompleteStringCollection col)
        {
            List<NhaSanXuat> listNhaSanXuat = _shareEntityDao.LoadNhaSanXuat();
            for (int i = 0; i < listNhaSanXuat.Count; i++)
            {
                col.Add(listNhaSanXuat[i].TenNhaSanXuat);
            }
        }
        public void addQUocGiaItems(AutoCompleteStringCollection col)
        {
            List<QuocGia> listQuocGia = _shareEntityDao.LoadQuocGia();
            for (int i = 0; i < listQuocGia.Count; i++)
            {
                col.Add(listQuocGia[i].TenQuocGia);
            }
        }
        private void BuildGridViewRow()
        {
            DataGridViewCheckBoxColumn checkBoxColumn = new DataGridViewCheckBoxColumn();
            checkBoxColumn.Width = 60;
            grdToaThuoc.Columns.Add(checkBoxColumn);

           
            DataGridViewTextBoxColumn tenThuocColumn = new DataGridViewTextBoxColumn();
            tenThuocColumn.HeaderText = "Tên thuốc";
            tenThuocColumn.Width = 145;
            tenThuocColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(tenThuocColumn);

            DataGridViewComboBoxColumn col = new DataGridViewComboBoxColumn();
            col.Width = 140;
            col.HeaderText = "Mã thuốc";
            col.DataSource = _shareEntityDao.LoadThongTinThuoc();
            col.DisplayMember = "MedicineID";
            col.ValueMember = "MedicineID";
            grdToaThuoc.Columns.Add(col);

            DataGridViewTextBoxColumn hanSuDungColumn = new DataGridViewTextBoxColumn();
            hanSuDungColumn.Width = 130;
            hanSuDungColumn.HeaderText = "Hạn sử dụng";
            grdToaThuoc.Columns.Add(hanSuDungColumn);

            DataGridViewCheckBoxColumn baoHiemColumn = new DataGridViewCheckBoxColumn();
            baoHiemColumn.Width = 100;
            baoHiemColumn.HeaderText = "Thuốc BH";
            baoHiemColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(baoHiemColumn);

            DataGridViewTextBoxColumn soLuongColumn = new DataGridViewTextBoxColumn();
            soLuongColumn.Width = 130;
            soLuongColumn.HeaderText = "Số lượng";
            grdToaThuoc.Columns.Add(soLuongColumn);

            //DataGridViewTextBoxColumn hamLuongColumn = new DataGridViewTextBoxColumn();
            //hamLuongColumn.Width = 120;
            //hamLuongColumn.HeaderText = "Hàm lượng";
            //grdToaThuoc.Columns.Add(hamLuongColumn);

            DataGridViewTextBoxColumn giaNhapColumn = new DataGridViewTextBoxColumn();
            giaNhapColumn.Width = 130;
            giaNhapColumn.HeaderText = "Giá thời diểm nhập";
            giaNhapColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(giaNhapColumn);

            DataGridViewTextBoxColumn giaTTColumn = new DataGridViewTextBoxColumn();
            giaTTColumn.Width = 130;
            giaTTColumn.HeaderText = "Giá TT";
            giaTTColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(giaTTColumn);

            //DataGridViewComboBoxColumn cachUongColumn = new DataGridViewComboBoxColumn();
            //cachUongColumn.Width = 130;
            //cachUongColumn.HeaderText = "Cách uống";
            //cachUongColumn.DataSource = _shareEntityDao.LoadThongTinCachUongThuoc();
            //cachUongColumn.DisplayMember = "CachUong";
            //cachUongColumn.ValueMember = "MaUongThuoc";
            //grdToaThuoc.Columns.Add(cachUongColumn);
            DataGridViewTextBoxColumn giaSTColumn = new DataGridViewTextBoxColumn();
            giaSTColumn.Width = 130;
            giaSTColumn.HeaderText = "Giá ST";
            giaSTColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(giaSTColumn);

            DataGridViewTextBoxColumn thanhTienColumn = new DataGridViewTextBoxColumn();
            thanhTienColumn.Width = 130;
            thanhTienColumn.HeaderText = "Thành tiến";
            thanhTienColumn.ReadOnly = true;
            grdToaThuoc.Columns.Add(thanhTienColumn);


            grdToaThuoc.CellClick +=grdToaThuoc_CellDoubleClick;
            int rowIndex = this.grdToaThuoc.Rows.Add(1);
            var row = this.grdToaThuoc.Rows[rowIndex];

        }

         private void grdToaThuoc_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            currentCell = this.grdToaThuoc.CurrentCell;
            if (currentCell != null)
            {
                currentRowIndex = currentCell.RowIndex;
                selectedThuoc = listThuoc[currentRowIndex];
                LoadThongTinThuocToForm(selectedThuoc);
                btnUpdate.Enabled = true;
                btnLuu.Enabled = false;
            }
            else
            {
                currentRowIndex = -1;
            }
 
        }
         private void ResetFormThongTinThuoc()
         {
             txtMaThuoc.Text = string.Empty;
             txtTenThuoc.Text = string.Empty;
             txtSoTT.Text = string.Empty;
             txtTenThanhPhanThuoc.Text = string.Empty;
             cbbDonViTinh.SelectedIndex = 0;
             cbBaoHiem.Checked = false;
             txtGiaDNMua.Text = string.Empty;
             txtGiaDNMuaVAT.Text = string.Empty;
             txtGiaThucMua.Text = string.Empty;
             txtGiaDNBan.Text = string.Empty;
             txtGiaDNBanVAT.Text = string.Empty;
             txtGiaThucBan.Text = string.Empty;
             txtHamLuong.Text = string.Empty;
             txtSoDangKy.Text = string.Empty;
             txtDangBaoChe.Text = string.Empty;
             txtNhaSanXuat.Text = string.Empty;
             txtQuocGia.Text = string.Empty;
             cbHoatDong.Checked = false;
         }
        private void LoadThongTinThuocToForm(ThongTinThuoc selectedThuoc)
        {
            txtMaThuoc.Text = selectedThuoc.MaThuocYTe;
            txtTenThuoc.Text = selectedThuoc.MedicineName;
            txtSoTT.Text = selectedThuoc.STTTheoDMTCuaBYT;
            txtTenThanhPhanThuoc.Text = selectedThuoc.TenThanhPhanThuoc;
            cbbDonViTinh.SelectedValue = selectedThuoc.DonViTinh;
            cbBaoHiem.Checked = selectedThuoc.BaoHiem;
            txtGiaDNMua.Text = selectedThuoc.GiaDNMua.ToString();
            txtGiaDNMuaVAT.Text = selectedThuoc.GiaDNMuaVAT.ToString();
            txtGiaThucMua.Text = selectedThuoc.GiaThucMua.ToString();
            txtGiaDNBan.Text = selectedThuoc.GiaDNBan.ToString();
            txtGiaDNBanVAT.Text = selectedThuoc.GiaDNBanVAT.ToString();
            txtGiaThucBan.Text = selectedThuoc.GiaThucBan.ToString();
            txtHamLuong.Text = selectedThuoc.HamLuong;
            txtSoDangKy.Text = selectedThuoc.SoDKHoacGPKD;
            txtDangBaoChe.Text = selectedThuoc.DangBaoCheDuongUong;
            txtNhaSanXuat.Text = selectedThuoc.NhaSanXuat;
            txtQuocGia.Text = selectedThuoc.QuocGia;
            cbHoatDong.Checked = selectedThuoc.HoatDong;
        }
        private ThongTinThuoc BuildThongTinThuoc(bool isNew)
        {
            ThongTinThuoc thongTinThuoc = new ThongTinThuoc();
            if (isNew)
            {
                thongTinThuoc.MedicineID = string.Empty;
                thongTinThuoc.CreatedBy = clsSystemConfig.UserName;
            }
            else
            {
                thongTinThuoc.MedicineID = selectedThuoc.MedicineID;
                thongTinThuoc.CreatedBy = string.Empty;
            }
            thongTinThuoc.MaThuocYTe = txtMaThuoc.Text;
            thongTinThuoc.MedicineName = txtTenThuoc.Text;
            thongTinThuoc.STTTheoDMTCuaBYT = txtSoTT.Text;
            thongTinThuoc.TenThanhPhanThuoc = txtTenThanhPhanThuoc.Text;
            thongTinThuoc.DonViTinh = (int)cbbDonViTinh.SelectedValue;
            thongTinThuoc.BaoHiem = cbBaoHiem.Checked;
            thongTinThuoc.GiaDNMua = decimal.Parse(txtGiaDNMua.Text);
            thongTinThuoc.GiaDNMuaVAT = decimal.Parse(txtGiaDNMuaVAT.Text);
            thongTinThuoc.GiaThucMua = decimal.Parse(txtGiaThucMua.Text);
            thongTinThuoc.GiaDNBan = decimal.Parse(txtGiaDNBan.Text);
            thongTinThuoc.GiaDNBanVAT = decimal.Parse(txtGiaDNBanVAT.Text);
            thongTinThuoc.GiaThucBan = decimal.Parse(txtGiaThucBan.Text);
            thongTinThuoc.HamLuong = txtHamLuong.Text;
            thongTinThuoc.SoDKHoacGPKD = txtSoDangKy.Text;
            thongTinThuoc.DangBaoCheDuongUong = txtDangBaoChe.Text;
            thongTinThuoc.NhaSanXuat = txtNhaSanXuat.Text;
            thongTinThuoc.QuocGia = txtQuocGia.Text;
            thongTinThuoc.HoatDong = cbHoatDong.Checked;
            thongTinThuoc.LastUpdatedBy = clsSystemConfig.UserName;
            return thongTinThuoc;
        }
         void cellDateTimePickerValueChanged(object sender, EventArgs e)
         {
             grdToaThuoc.CurrentCell.Value = cellDateTimePicker.Value.ToString("dd-MM-yyyy");//convert the date as per your format
             cellDateTimePicker.Visible = false;
         }

      
     
       
       

       


        #endregion



      

        

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!CheckThongTinGiaThuoc())
            {
                MessageBox.Show("Thông tin giá thuốc không hợp lệ");
                return;
            }
            ThongTinThuoc tttCapNhat = BuildThongTinThuoc(false);
            if (_quanLyThuocDao.CheckThuocExist(tttCapNhat.MaThuocYTe, tttCapNhat.BaoHiem) == 1)
            {
                MessageBox.Show("Mã thuốc đã tồn tại. Vui lòng chọn mã khác");
                return;
            }
            if (string.IsNullOrEmpty(tttCapNhat.MaThuocYTe))
            {
                MessageBox.Show("Vui lòng nhập thông tin thuốc");
                return;
            }
           
            if (_quanLyThuocDao.LuuCapNhatThongTinThuoc(tttCapNhat))
            {
                LoadDanhMucThuoc();
                MessageBox.Show("Cập nhật thành công");
            }
            else
            {
                MessageBox.Show("Không thể cập nhật thông tin thuốc");
            }
        }

        private void btnTaoMoi_Click(object sender, EventArgs e)
        {
            btnUpdate.Enabled = false;
            btnLuu.Enabled = true;
            ResetFormThongTinThuoc();
        }
        private bool CheckThongTinGiaThuoc()
        {
            bool result = true;
            try
            {
                decimal giaDNMua = decimal.Parse(txtGiaDNMua.Text);
                decimal giaDNMuaVAT = decimal.Parse(txtGiaDNMuaVAT.Text);
                decimal giaThucMua = decimal.Parse(txtGiaThucMua.Text);
                decimal giaDNBan = decimal.Parse(txtGiaDNBan.Text);
                decimal giaDNBanVAT = decimal.Parse(txtGiaDNBanVAT.Text);
                decimal giaThucBan = decimal.Parse(txtGiaThucBan.Text);
                if (giaDNMua < 0 || giaDNMuaVAT < 0 || giaThucMua < 0 || giaDNBan < 0 || giaDNBanVAT < 0 || giaThucBan < 0)
                {
                    result = false;
                }
            }
            catch
            {
                result = false;
            }
            return result;
        }
        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (!CheckThongTinGiaThuoc())
            {
                MessageBox.Show("Thông tin giá thuốc không hợp lệ");
                return;
            }
            ThongTinThuoc tttCapNhat = BuildThongTinThuoc(true);
            if (_quanLyThuocDao.CheckThuocExist(tttCapNhat.MaThuocYTe, tttCapNhat.BaoHiem) == 1)
            {
                MessageBox.Show("Mã thuốc đã tồn tại. Vui lòng chọn mã khác");
                return;
            }
            if (string.IsNullOrEmpty(tttCapNhat.MaThuocYTe))
            {
                MessageBox.Show("Vui lòng nhập thông tin thuốc");
                return;
            }
           
            if (_quanLyThuocDao.LuuCapNhatThongTinThuoc(tttCapNhat))
            {
                LoadDanhMucThuoc();
                MessageBox.Show("Lưu thành công");
            }
            else
            {
                MessageBox.Show("Có lỗi trong khi lưu");
            }
        }
       

    }
}
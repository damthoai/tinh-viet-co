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
    public partial class frmChinhSachGia : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmChinhSachGia));

        private clsBaseBO _bo = new clsBaseBO();
        private readonly clsCommon _common = new clsCommon();
        private readonly ShareEntityDao _shareEntityDao = new ShareEntityDao();
        private readonly ThongTinKhamBenhDao _thongTinKhamBenhDao = new ThongTinKhamBenhDao();
        private readonly QuanLyThuocDao _quanLyThuocDao = new QuanLyThuocDao();
        QuyetDinhNghiPhep quyetDinhNghiPhep ;
        readonly System.Data.DataTable _dt = null;
        ComboBox cbm;
        DataGridViewCell currentCell;
        private int currentRowIndex;
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


        // Declare private fields
        private ChamCongLichLamViecBo _lichLamViecBo = new ChamCongLichLamViecBo();

        readonly DataGridViewColumn _originalColumns;
        private DataTable _dtApproveTimesheet;

        #endregion

        #region Constructors

        public frmChinhSachGia()
        {

            InitializeComponent();
            grdChinhSachGia.AutoGenerateColumns = false;
            grdChinhSachGia.CellClick += grdChinhSachGia_CellClick;
            clsTitleManager.InitTitle(this);
            //this.cellDateTimePicker = new DateTimePicker();
            //this.cellDateTimePicker.Format = DateTimePickerFormat.Custom;
            //this.cellDateTimePicker.CustomFormat = "dd-MM-yyyy";
            //this.cellDateTimePicker.ValueChanged += new EventHandler(cellDateTimePickerValueChanged);
            ////this.cellDateTimePicker.CloseUp += new EventHandler(oDateTimePicker_CloseUp);  
            //this.cellDateTimePicker.Visible = false;
            //this.grdChinhSachGia.Controls.Add(cellDateTimePicker);
            SetDefauldValue();
           // Save original columns
           // _originalColumns = new DataGridViewColumn[grdStores.Columns.Count;
           // grdStores.Columns.CopyTo(_originalColumns, 0);
           // grdStores.Sorted += grdStores_Sorted;
        }
        private void grdChinhSachGia_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            currentCell = this.grdChinhSachGia.CurrentCell;
            if (currentCell != null && btnLuu.Enabled == false)
            {
                txtMaChinhSachGia.Text = (string)grdChinhSachGia.Rows[currentCell.RowIndex].Cells[1].FormattedValue;
                txtTenChinhSachGia.Text = (string)grdChinhSachGia.Rows[currentCell.RowIndex].Cells[2].FormattedValue;
                cbHoatDong.Checked = (bool)grdChinhSachGia.Rows[currentCell.RowIndex].Cells[5].FormattedValue;
                dtpThoiGianBatDau.Value = DateTime.Parse((string)grdChinhSachGia.Rows[currentCell.RowIndex].Cells[3].FormattedValue);
                dtpThoiGianKetThuc.Value = DateTime.Parse((string)grdChinhSachGia.Rows[currentCell.RowIndex].Cells[4].FormattedValue);
                dtpNgayNgungHoatDong.Value = DateTime.Parse((string)grdChinhSachGia.Rows[currentCell.RowIndex].Cells[6].FormattedValue);
                grdChinhSachGia.Rows[currentCell.RowIndex].Cells[0].Value = true;
                DeselectOrtherCheckbox(currentCell.RowIndex);
                btnCapNhat.Enabled = true;
                btnChiTietChinhSachGia.Enabled = true;
                currentRowIndex = currentCell.RowIndex;
            }
        }
        private void DeselectOrtherCheckbox(int currentRowIndex)
        {
            for (int i = 0; i < grdChinhSachGia.Rows.Count; i++)
            {
                if (i != currentRowIndex)
                {
                    grdChinhSachGia.Rows[i].Cells[0].Value = false;
                }
                else
                    continue;
            }
        }

        private void DeselectCheckbox()
        {
            for (int i = 0; i < grdChinhSachGia.Rows.Count; i++)
            {      
                    grdChinhSachGia.Rows[i].Cells[0].Value = false;
            }
        }
        void oDateTimePicker_CloseUp(object sender, EventArgs e)
        {
            // Hiding the control after use   
            cellDateTimePicker.Visible = false;
        } 
        private void SetDefauldValue()
        {
       //     BuildGridViewRow();
       //     LoadThongTinNhanVien();
            LoadAllChinhSachGia();
            SetDefaultInputValue();
            btnLuu.Enabled = false;
            btnCapNhat.Enabled = true;
            btnChiTietChinhSachGia.Enabled = true;
            btnThemMoi.Enabled = true;

        }
        private void LoadAllChinhSachGia()
        {
            grdChinhSachGia.DataSource = _quanLyThuocDao.LoadChinhSachGia();
        }

        private void SetDefaultInputValue()
        {
            if (grdChinhSachGia.Rows.Count > 0)
            {
                txtMaChinhSachGia.Text = (string)grdChinhSachGia.Rows[0].Cells[1].FormattedValue;
                txtTenChinhSachGia.Text = (string)grdChinhSachGia.Rows[0].Cells[2].FormattedValue;
                cbHoatDong.Checked = (bool)grdChinhSachGia.Rows[0].Cells[5].FormattedValue;
                dtpThoiGianBatDau.Value = DateTime.Parse((string)grdChinhSachGia.Rows[0].Cells[3].FormattedValue);
                dtpThoiGianKetThuc.Value = DateTime.Parse((string)grdChinhSachGia.Rows[0].Cells[4].FormattedValue);
                dtpNgayNgungHoatDong.Value = DateTime.Parse((string)grdChinhSachGia.Rows[0].Cells[6].FormattedValue);
            }
        }
        private void BuildGridViewData()
        {
            

        }

         private void grdToaThuoc_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //currentCell = this.grdToaThuoc.CurrentCell;
            //bool isValidMaThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value != null && this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString() != "";
            //if (e.ColumnIndex == 3 && isValidMaThuoc)
            //{
            //    System.Drawing.Rectangle tempRect = grdToaThuoc.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, false);
 
            //    cellDateTimePicker.Location = tempRect.Location;
 
            //    cellDateTimePicker.Width = tempRect.Width;
 
            //    cellDateTimePicker.Visible = true;
 
            //}
 
        }
         void cellDateTimePickerValueChanged(object sender, EventArgs e)
         {
             //grdToaThuoc.CurrentCell.Value = cellDateTimePicker.Value.ToString("dd-MM-yyyy");//convert the date as per your format
             //cellDateTimePicker.Visible = false;
         }

      
     
       
       

        private void Export()
        {
            //try
            //{
            //    var dtStoreList = grdStores.DataSource as System.Data.DataTable;
            //    if (dtStoreList == null)
            //    {
            //        return;
            //    }
            //    // Open Save dialog
            //    using (var saveDlg = new SaveFileDialog())
            //    {
            //        saveDlg.AddExtension = true;
            //        saveDlg.Filter = "Excel 2007 Workbook (*.xlsx)|*.xlsx|Excel 97 - 2003 Workbook (*.xls)|*.xls";
            //        if (saveDlg.ShowDialog(this) != DialogResult.OK) return;
            //        Cursor.Current = Cursors.WaitCursor;

            //        // Build Selected Stores as DataTable
            //        DataTable dtSelectedStores = dtStoreList.Clone();

            //        for (int i = 0; i < dtStoreList.Rows.Count; i++)
            //        {
            //            dtSelectedStores.ImportRow(dtStoreList.Rows[i]);
            //        }



            //        // Execute export
            //        var exporter = new EditApproveTimesheetExporter(true);
            //        exporter.AddExportTable(dtSelectedStores);
            //        exporter.Export(saveDlg.FileName);

            //        MessageBox.Show(clsResources.GetMessage("messages.exportStore.EditStore") + Environment.NewLine + saveDlg.FileName,
            //            clsResources.GetMessage("messages.general"), MessageBoxButtons.OK, MessageBoxIcon.Information);

            //    }
            //}
            //catch (Exception ex)
            //{
            //    Log.Error(ex.Message);
            //    MessageBox.Show(clsResources.GetMessage("errors.unknown"),
            //        clsResources.GetMessage("errors.general"), MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}
            //finally
            //{
            //    Cursor.Current = Cursors.Default;
            //}
        }


        #endregion

      
        private void btnExport_Click(object sender, EventArgs e)
        {
           // this.Export();
        }


    

        private void btnLuuIn_Click(object sender, EventArgs e)
        {
            if (txtTenChinhSachGia.Text.Trim() == "")
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.TenChinhSachGia"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (dtpThoiGianBatDau.Value > dtpThoiGianKetThuc.Value)
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.NgayBatDau"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (dtpThoiGianKetThuc.Value < dtpThoiGianBatDau.Value)
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.NgayKetThuc"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (dtpNgayNgungHoatDong.Value < dtpThoiGianBatDau.Value)
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.NgayHetHan"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            ThongTinBenhNhan ttNhanVien = _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            ChinhSachGiaDT chinhSachGia = new ChinhSachGiaDT();
            chinhSachGia.MaChinhSachGia = txtMaChinhSachGia.Text;
            chinhSachGia.TenChinhSachGia = txtTenChinhSachGia.Text;
            chinhSachGia.HoatDong = cbHoatDong.Checked;
            chinhSachGia.ThoiGianBatDau = dtpThoiGianBatDau.Value;
            chinhSachGia.ThoiGianKetThuc = dtpThoiGianKetThuc.Value;
            chinhSachGia.NgayNgungHoatDong = dtpNgayNgungHoatDong.Value;
            chinhSachGia.CreatedDate = DateTime.Now;
            chinhSachGia.LastUpdatedDate = DateTime.Now;
            chinhSachGia.CreatedBy = ttNhanVien.FullName;
            chinhSachGia.LastUpdatedBy = ttNhanVien.FullName;

            if (_quanLyThuocDao.SaveChinhSachGia(chinhSachGia))
            {
                DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.Success"), clsResources.GetMessage("messages.frmChinhSachGia.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (result == DialogResult.OK)
                {
                    ResetChinhSachGiaSauKhiTao();
                    grdChinhSachGia.DataSource = _quanLyThuocDao.LoadChinhSachGia();
                    btnLuu.Enabled = false;
                }
                return;
            }
            else
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.Error"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            //ThongTinNhapKho thongTinNhapKho = BuildThongTinNhapKho();
            //if (thongTinNhapKho != null)
            //{
            //    List<ThongTinNhapKhoDetail> listThongTinNhapKhoDetail = BuildThongTinNhapKhoDetail(thongTinNhapKho.MaNhapKho);
            //    if (_thongTinNhapKhoDao.SaveThongTinNhapKho(thongTinNhapKho, listThongTinNhapKhoDetail))
            //    {
            //        DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.Success"), clsResources.GetMessage("messages.frmChinhSachGia.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            //        if (result == DialogResult.OK)
            //        {
            //            //grdToaThuoc.Rows.Clear();
            //            //grdToaThuoc.Rows.Add(1);
            //        }
            //        return;
            //    }
            //    else {
            //        MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.Error"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
            //        return;
            //    }
            //}
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            btnCapNhat.Enabled = false;
            btnChiTietChinhSachGia.Enabled = false;
            btnLuu.Enabled = true;
            TaoMoiChinhSachGia();
            DeselectCheckbox();
        }

        private void ResetChinhSachGiaSauKhiTao()
        {
            txtMaChinhSachGia.Text = _quanLyThuocDao.GenerateNewMaChinhSachGia();
            txtTenChinhSachGia.Text = "";
            cbHoatDong.Checked = false;
            dtpThoiGianBatDau.Value = DateTime.Now;
            dtpThoiGianKetThuc.Value = DateTime.Now;
            dtpNgayNgungHoatDong.Value = DateTime.Now;
        }
        private void TaoMoiChinhSachGia()
        {
            txtMaChinhSachGia.Text = _quanLyThuocDao.GenerateNewMaChinhSachGia();
            txtTenChinhSachGia.Text = "";
            cbHoatDong.Checked = false;
            dtpNgayNgungHoatDong.Value = DateTime.Now;
            dtpThoiGianKetThuc.Value = DateTime.Now;
            dtpThoiGianBatDau.Value = DateTime.Now;
        }

        private void dtpThoiGianBatDau_ValueChanged(object sender, EventArgs e)
        {

        }

        private void dtpThoiGianKetThuc_ValueChanged(object sender, EventArgs e)
        {

        }

        private void dtpNgayNgungHoatDong_ValueChanged(object sender, EventArgs e)
        {

        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            if (txtTenChinhSachGia.Text.Trim() == "")
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.TenChinhSachGia"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (dtpThoiGianBatDau.Value > dtpThoiGianKetThuc.Value)
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.NgayBatDau"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (dtpThoiGianKetThuc.Value < dtpThoiGianBatDau.Value)
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.NgayKetThuc"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (dtpNgayNgungHoatDong.Value < dtpThoiGianBatDau.Value)
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.NgayHetHan"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            ThongTinBenhNhan ttNhanVien = _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            ChinhSachGiaDT chinhSachGia = new ChinhSachGiaDT();
            chinhSachGia.MaChinhSachGia = txtMaChinhSachGia.Text;
            chinhSachGia.TenChinhSachGia = txtTenChinhSachGia.Text;
            chinhSachGia.HoatDong = cbHoatDong.Checked;
            chinhSachGia.ThoiGianBatDau = dtpThoiGianBatDau.Value;
            chinhSachGia.ThoiGianKetThuc = dtpThoiGianKetThuc.Value;
            chinhSachGia.NgayNgungHoatDong = dtpNgayNgungHoatDong.Value;
            chinhSachGia.CreatedDate = DateTime.Now;
            chinhSachGia.LastUpdatedDate = DateTime.Now;
            chinhSachGia.CreatedBy = ttNhanVien.FullName;
            chinhSachGia.LastUpdatedBy = ttNhanVien.FullName;

            if (_quanLyThuocDao.UpdateChinhSachGia(chinhSachGia))
            {
                DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.Success"), clsResources.GetMessage("messages.frmChinhSachGia.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (result == DialogResult.OK)
                {
                   // ResetChinhSachGiaSauKhiTao();
                    grdChinhSachGia.DataSource = _quanLyThuocDao.LoadChinhSachGia();
                    //if (currentRowIndex >= 0)
                    //{
                    //    DeselectOrtherCheckbox(currentRowIndex);
                    //    grdChinhSachGia.Rows[currentCell.RowIndex].Cells[0].Value = true;
                    //}
                    DeselectCheckbox();
                    btnLuu.Enabled = false;
                }
                return;
            }
            else
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.Error"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void btnChiTietChinhSachGia_Click(object sender, EventArgs e)
        {
            frmChinhSachGiaChiTiet frmChiTiet = new frmChinhSachGiaChiTiet();
            frmChiTiet.SetMaChinhSachGia(txtMaChinhSachGia.Text);
            frmChiTiet.Show();
        }
     

        /*
        private ThongTinNhapKho BuildThongTinNhapKho()
        {
            ThongTinNhapKho thongTinNhapKho = new ThongTinNhapKho();

            return thongTinNhapKho;
        }

        private List<ThongTinNhapKhoDetail> BuildThongTinNhapKhoDetail(string maNhapKho)
        {
            List<string> listmaThuoc = new List<string>();
            List<ThongTinNhapKhoDetail> listThongTinNhapKhoDetail = new List<ThongTinNhapKhoDetail>();
            if (grdToaThuoc.Rows.Count > 0)
            {

                for (int i = 0; i < grdToaThuoc.Rows.Count; i++)
                {

                    ThongTinNhapKhoDetail thongTinNhapKhoDetail = new ThongTinNhapKhoDetail();
                    if ((string)grdToaThuoc.Rows[i].Cells[1].FormattedValue == "")
                        continue;
                    thongTinNhapKhoDetail.TenThuoc = (string)grdToaThuoc.Rows[i].Cells[1].FormattedValue;
                    thongTinNhapKhoDetail.MaThuoc = (string)grdToaThuoc.Rows[i].Cells[2].FormattedValue;
                    string hanSuDung = grdToaThuoc.Rows[i].Cells[3].FormattedValue.ToString();
                    if (hanSuDung == "")
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckHanSuDungThuoc"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    DateTime dt = DateTime.ParseExact(hanSuDung.Replace("-",""), "ddMMyyyy",
                                  CultureInfo.InvariantCulture);
                    dt.ToString("yyyyMMdd");
                    thongTinNhapKhoDetail.HanSuDung = dt.ToString("yyyyMMdd");;
                    thongTinNhapKhoDetail.ThuocBH = (bool)grdToaThuoc.Rows[i].Cells[4].FormattedValue;
                    thongTinNhapKhoDetail.SoLuong = (string)grdToaThuoc.Rows[i].Cells[5].FormattedValue;
                    thongTinNhapKhoDetail.GiaThoiDiemNhap = (string)grdToaThuoc.Rows[i].Cells[6].FormattedValue;
                    thongTinNhapKhoDetail.GiaTT = (string)grdToaThuoc.Rows[i].Cells[7].FormattedValue;
                    thongTinNhapKhoDetail.GiaST = (string)grdToaThuoc.Rows[i].Cells[8].FormattedValue;
                    thongTinNhapKhoDetail.ThanhTien = (string)grdToaThuoc.Rows[i].Cells[9].FormattedValue;
                    thongTinNhapKhoDetail.MaNhapKho = maNhapKho;
                    thongTinNhapKhoDetail.LoThuoc = DateTime.Now.ToString("yyyyMMddHHmmss");
                    try
                    {
                        int checkSoluong = int.Parse(thongTinNhapKhoDetail.SoLuong);
                        if (checkSoluong <= 0)
                        {
                            MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckValidSoLuong"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return null;
                        }
                    }
                    catch
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckValidSoLuong"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }


                    if (!listmaThuoc.Contains(thongTinNhapKhoDetail.MaThuoc))
                    {
                        listmaThuoc.Add(thongTinNhapKhoDetail.MaThuoc);
                    }
                    else
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckTrungLapThuoc"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    listThongTinNhapKhoDetail.Add(thongTinNhapKhoDetail);

                }
                
            }
            return listThongTinNhapKhoDetail;
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
            if (currentCell != null && currentCell.ColumnIndex == 5)
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckValidSoLuong"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                    
                    }
                    catch {
                        MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckValidSoLuong"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                }
                
                double currentGia = this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value != null ? double.Parse(this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value.ToString()) : 0;
                double currentTienThuoc = currentSoLuong * currentGia;
               // MessageBox.Show("CellChange" + currentTienThuoc.ToString());
                this.grdToaThuoc[currentCell.ColumnIndex + 4, currentCell.RowIndex].Value = currentTienThuoc.ToString();
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
                           //case 1: chua co thong tin thuoc cho row
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGia.CheckTrungLapThuoc1"), clsResources.GetMessage("messages.frmChinhSachGia.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value = ttt.MedicineName;
                        this.grdToaThuoc[currentCell.ColumnIndex + 2, currentCell.RowIndex].Value = ttt.BaoHiem;
                        this.grdToaThuoc[currentCell.ColumnIndex + 4, currentCell.RowIndex].Value = ttt.GiaDNMuaVAT;
                        this.grdToaThuoc[currentCell.ColumnIndex + 5, currentCell.RowIndex].Value = ttt.GiaDNMua;
                        this.grdToaThuoc[currentCell.ColumnIndex + 6, currentCell.RowIndex].Value = ttt.GiaDNMuaVAT;
                    }
                    if (currentCell.ColumnIndex == 2 && (currentCell.RowIndex == grdToaThuoc.Rows.Count - 1))
                    {
                        grdToaThuoc.Rows.Add(1);
                    }

                }
            }
        }

        */

 

      
    }
}
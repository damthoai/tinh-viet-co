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
    public partial class frmnhapkhothuoc : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmnhapkhothuoc));

        private clsBaseBO _bo = new clsBaseBO();
        private readonly clsCommon _common = new clsCommon();
        private readonly ShareEntityDao _shareEntityDao = new ShareEntityDao();
        private readonly ThongTinKhamBenhDao _thongTinKhamBenhDao = new ThongTinKhamBenhDao();
        private readonly ThongTinNhapKhoDao _thongTinNhapKhoDao = new ThongTinNhapKhoDao();
        QuyetDinhNghiPhep quyetDinhNghiPhep ;
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


        // Declare private fields
        private ChamCongLichLamViecBo _lichLamViecBo = new ChamCongLichLamViecBo();

        readonly DataGridViewColumn _originalColumns;
        private DataTable _dtApproveTimesheet;

        #endregion

        #region Constructors

        public frmnhapkhothuoc()
        {

            InitializeComponent();

            clsTitleManager.InitTitle(this);
            this.cellDateTimePicker = new DateTimePicker();
            this.cellDateTimePicker.Format = DateTimePickerFormat.Custom;
            this.cellDateTimePicker.CustomFormat = "dd-MM-yyyy";
            this.cellDateTimePicker.ValueChanged += new EventHandler(cellDateTimePickerValueChanged);
            //this.cellDateTimePicker.CloseUp += new EventHandler(oDateTimePicker_CloseUp);  
            this.cellDateTimePicker.Visible = false;
            this.grdToaThuoc.Controls.Add(cellDateTimePicker);
            SetDefauldValue();
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
            BindPhongKham();
            BuildGridViewRow();
            LoadThongTinNhanVien();
        }
        private void BindPhongKham()
        {
            cbbPhongKham.DataSource = _shareEntityDao.LoadDanhSachPhongKham();
        }

        private void LoadThongTinNhanVien()
        {
            ThongTinBenhNhan ttNhanVien = _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            txtMaNhanVienNhap.Text = ttNhanVien.EmployeeID;
            txtNhanVienNhap.Text = ttNhanVien.FullName;
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

            grdToaThuoc.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellEndEdit);
            grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);
            grdToaThuoc.CellValueChanged += grdToaThuoc_CellValueChanged;
            grdToaThuoc.CellClick +=grdToaThuoc_CellDoubleClick;
            int rowIndex = this.grdToaThuoc.Rows.Add(1);
            var row = this.grdToaThuoc.Rows[rowIndex];

        }

         private void grdToaThuoc_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            currentCell = this.grdToaThuoc.CurrentCell;
            bool isValidMaThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value != null && this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString() != "";
            if (e.ColumnIndex == 3 && isValidMaThuoc)
            {
                System.Drawing.Rectangle tempRect = grdToaThuoc.GetCellDisplayRectangle(e.ColumnIndex, e.RowIndex, false);
 
                cellDateTimePicker.Location = tempRect.Location;
 
                cellDateTimePicker.Width = tempRect.Width;
 
                cellDateTimePicker.Visible = true;
 
            }
 
        }
         void cellDateTimePickerValueChanged(object sender, EventArgs e)
         {
             grdToaThuoc.CurrentCell.Value = cellDateTimePicker.Value.ToString("dd-MM-yyyy");//convert the date as per your format
             cellDateTimePicker.Visible = false;
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


        private void btnXacNhan_Click(object sender, EventArgs e)
        {
           // MessageBox.Show(clsResources.GetMessage("messages.save.success"), clsResources.GetMessage("messages.general"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.Waring"), clsResources.GetMessage("messages.frmnhapkhothuoc.Title"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            if (result == DialogResult.OK)
            {
                grpThongTinKhamBenh.Enabled = false;
                btnXoaThuoc.Enabled = false;
            }
        }

        private void btnLuuIn_Click(object sender, EventArgs e)
        {
            //MessageBox.Show(_thongTinKhamBenhDao.GenerateNewMaKhamKhamBenh());
            //ThongTinKhamBenh ttkb = BuildThongTinKhamBenh();
            //if(ttkb != null ){
            //    if (_thongTinKhamBenhDao.SaveThongTinKhamBenh(ttkb))
            //    {
            //        DialogResult result =  MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.Success"), clsResources.GetMessage("messages.frmnhapkhothuoc.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            //        if (result == DialogResult.OK)
            //        {
            //            grdToaThuoc.Rows.Clear();
            //            grdToaThuoc.Rows.Add(1);
            //        }
            //        return;
            //    }
            //    else
            //    {
            //        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.Error"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
            //        return;
            //    }
            //}
            if (!ValidateThongSoNhapKho())
            {
                MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.ValidateThongSoNhapKho"), clsResources.GetMessage("messages.frmnhapkhothuoc.Title"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            ThongTinNhapKho thongTinNhapKho = BuildThongTinNhapKho();
            if (thongTinNhapKho != null)
            {
                List<ThongTinNhapKhoDetail> listThongTinNhapKhoDetail = BuildThongTinNhapKhoDetail(thongTinNhapKho.MaNhapKho);
                if (_thongTinNhapKhoDao.SaveThongTinNhapKho(thongTinNhapKho, listThongTinNhapKhoDetail))
                {
                    DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.Success"), clsResources.GetMessage("messages.frmnhapkhothuoc.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (result == DialogResult.OK)
                    {
                        grdToaThuoc.Rows.Clear();
                        grdToaThuoc.Rows.Add(1);
                    }
                    return;
                }
                else {
                    MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.Error"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            thongTinKhamBenh.NgayKhamBenh = dtpNgayNhapKho.Value;
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckValidSoLuong"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return null;
                        }
                    }
                    catch {
                        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckValidSoLuong"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckTrungLapThuoc"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }
                    listDonThuoc.Add(thongTinDonThuoc);
                }
                thongTinKhamBenh.ThongTinToaThuoc = listDonThuoc;
            }

            return thongTinKhamBenh;
        }

        private bool ValidateThongSoNhapKho()
        {
            bool isValid = true;
            if (txtMaSoHDD.Text == "")
            {
                txtMaSoHDD.ForeColor = Color.Red;
                isValid = false;
            }
            if (txtDonViCungCap.Text == "")
            {
                txtMaSoHDD.ForeColor = Color.Red;
                isValid = false;
            }
            if (txtMaDonViCungCap.Text == "")
            {
                txtMaDonViCungCap.ForeColor = Color.Red;
                isValid = false;
            }
            if (!isValid)
            {

            }
            else
            {
                txtMaSoHDD.ForeColor = Color.White;
                txtMaSoHDD.ForeColor = Color.White;
                txtMaDonViCungCap.ForeColor = Color.White;
            }
            return isValid;
        }
        private ThongTinNhapKho BuildThongTinNhapKho()
        {
            ThongTinNhapKho thongTinNhapKho = new ThongTinNhapKho();
            thongTinNhapKho.MaNhapKho = _thongTinNhapKhoDao.GenerateNewMaNhapKho();
            thongTinNhapKho.PhongKhamKho = cbbPhongKham.GetItemText(cbbPhongKham.SelectedItem);
            thongTinNhapKho.NgayNhapKho = dtpNgayNhapKho.Value;
            thongTinNhapKho.TongTienHD = txtTongThanhTien.Text;
            thongTinNhapKho.MaNhanVien = txtMaNhanVienNhap.Text;
            thongTinNhapKho.TenNhanVien = txtNhanVienNhap.Text;
            thongTinNhapKho.MaHDD = txtMaSoHDD.Text;
            thongTinNhapKho.DonViCungCap = txtDonViCungCap.Text;
            thongTinNhapKho.MaSoDVCungCap = txtMaDonViCungCap.Text;
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
                        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckHanSuDungThuoc"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckValidSoLuong"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return null;
                        }
                    }
                    catch
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckValidSoLuong"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return null;
                    }


                    if (!listmaThuoc.Contains(thongTinNhapKhoDetail.MaThuoc))
                    {
                        listmaThuoc.Add(thongTinNhapKhoDetail.MaThuoc);
                    }
                    else
                    {
                        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckTrungLapThuoc"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckValidSoLuong"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                    
                    }
                    catch {
                        MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckValidSoLuong"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmnhapkhothuoc.CheckTrungLapThuoc1"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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



 

      
    }
}
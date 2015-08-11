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
    public partial class frmXuatKho : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmXuatKho));

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

        public frmXuatKho()
        {

            InitializeComponent();
           // grdToaThuoc.AutoGenerateColumns = false;
            clsTitleManager.InitTitle(this);
            //this.cellDateTimePicker = new DateTimePicker();
            //this.cellDateTimePicker.Format = DateTimePickerFormat.Custom;
            //this.cellDateTimePicker.CustomFormat = "dd-MM-yyyy";
            //this.cellDateTimePicker.ValueChanged += new EventHandler(cellDateTimePickerValueChanged);
            ////this.cellDateTimePicker.CloseUp += new EventHandler(oDateTimePicker_CloseUp);  
            //this.cellDateTimePicker.Visible = false;
            //this.grdToaThuoc.Controls.Add(cellDateTimePicker);
            cbbPhongKham.Enabled = false;
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
            BindPhongKham();
            LoadThongTinXuatKho();
        }

        private void BindPhongKham()
        {
            //cbbPhongKham.DataSource = _shareEntityDao.LoadDanhSachPhongKham();
            List<PhongKham> listPhongKham = _shareEntityDao.LoadDanhSachPhongKham();
            cbbPhongKham.DataSource = listPhongKham;
            string currentKho = System.Configuration.ConfigurationManager.AppSettings["RCLINIC00002"];
            int currentIndex = listPhongKham.FindIndex(a => a.RoomName == currentKho);
            cbbPhongKham.SelectedIndex = currentIndex;
        }
        private void LoadThongTinXuatKho()
        {
           // ThongTinBenhNhan ttNhanVien = _thongTinKhamBenhDao.GetThongTinBenhNhan(clsSystemConfig.UserName);
            grdToaThuoc.DataSource = _thongTinNhapKhoDao.LoadThongTinXuatKho("");
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
            try
            {
                var dtStoreList = grdToaThuoc.DataSource as System.Data.DataTable;
                if (dtStoreList == null)
                {
                    return;
                }
                // Open Save dialog
                using (var saveDlg = new SaveFileDialog())
                {
                    saveDlg.AddExtension = true;
                    saveDlg.Filter = "Excel 2007 Workbook (*.xlsx)|*.xlsx|Excel 97 - 2003 Workbook (*.xls)|*.xls";
                    if (saveDlg.ShowDialog(this) != DialogResult.OK) return;
                    Cursor.Current = Cursors.WaitCursor;

                    // Build Selected Stores as DataTable
                    DataTable dtSelectedStores = dtStoreList.Clone();

                    for (int i = 0; i < dtStoreList.Rows.Count; i++)
                    {
                        dtSelectedStores.ImportRow(dtStoreList.Rows[i]);
                    }



                    // Execute export
                    var exporter = new XuatKhoExporter(true);
                    exporter.AddExportTable(dtSelectedStores);
                    exporter.Export(saveDlg.FileName);

                    MessageBox.Show(clsResources.GetMessage("messages.exportStore.EditStore") + Environment.NewLine + saveDlg.FileName,
                        clsResources.GetMessage("messages.general"), MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }
            catch (Exception ex)
            {
                Log.Error(ex.Message);
                MessageBox.Show(clsResources.GetMessage("errors.unknown"),
                    clsResources.GetMessage("errors.general"), MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                Cursor.Current = Cursors.Default;
            }
        }


        #endregion

      
        private void btnExport_Click(object sender, EventArgs e)
        {
           // this.Export();
        }


      

        private void btnLuuIn_Click(object sender, EventArgs e)
        {
            
        }
        public void SetQuyetDinhNghiPhep(QuyetDinhNghiPhep qd)
        {
            this.quyetDinhNghiPhep = qd;
        }

        private void btnExport_Click_1(object sender, EventArgs e)
        {
            Export();
        }
       

    }
}
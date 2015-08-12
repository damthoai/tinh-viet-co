﻿using System;
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
using TextBox = System.Windows.Forms.TextBox;

namespace UKPI.Presentation
{
    public partial class frmNghiPhep : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmNghiPhep));

        private clsBaseBO _bo = new clsBaseBO();
        private ChamCongLichLamViecBo _ccllv = new ChamCongLichLamViecBo();
        private CreateTimesheetBo _tsBo = new CreateTimesheetBo();
        private readonly clsCommon _common = new clsCommon();
        readonly System.Data.DataTable _dt = null;

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

        //
        readonly DataGridViewColumn[] _originalColumns;
        private DataTable _dtApproveTimesheet;

        #endregion

        //Parent component
        frmKhambenh parentForm;
        private ShareEntityDao _shareEntityDao = new ShareEntityDao();
        #region Constructors

        public frmNghiPhep()
        {

            InitializeComponent();

            clsTitleManager.InitTitle(this);
            GetParam();
            SetDefauldValue();
            InitDataControl();
            this.Text = "QUYẾT ĐỊNH NGHỈ PHÉP CÓ BẢO HIỂM";
           
        }

        public void SetParentForm(frmKhambenh parent)
        {
            this.parentForm = parent;
        }
        private void InitDataControl()
        {
            var clvDao = new CaLamViecDao();
          

           
        }

        private void GetParam()
        {
           
        }

        private void SetDefauldValue()
        {
           
            BindLyDo();
            txtBenhNhan.Text = clsSystemConfig.UserName;
        }
        private void BindLyDo()
        {
            cbbLyDo.DataSource = _shareEntityDao.LoadLyDo();
        }
        private void BindGroup()
        {
            //var timesheet = new CreateTimesheetBo();
            //var dtNhom = timesheet.GetNhomByNhomTruong(clsSystemConfig.UserName);
            //if (dtNhom.Rows.Count > 0)
            //{
            //    txtTeam.Text = dtNhom.Rows[0][clsCommon.CreateTimesheet.Nhom].ToString();
            //    txtMaNhom.Text = dtNhom.Rows[0][clsCommon.CreateTimesheet.NhomId].ToString();
            //}
        }

        private void BindTeamLead()
        {

            //DataTable tbL1 = _ccllv.GetTruongNhomL0ByL1(clsSystemConfig.UserName);

            //cboTruongNhomL1.ValueMember = "USERNAME";
            //cboTruongNhomL1.DisplayMember = "QLL1";
            //cboTruongNhomL1.DataSource = tbL1;
        }

        private void BindShift()
        {
            //cboShift.ValueMember = "Value";
            //cboShift.DisplayMember = "Name";
            //cboShift.DataSource = _common.GetShift();
            //cboShift.SelectedItem = clsCommon.ApproveTimesheet.All;
        }

        private void BindOnOff()
        {
            //cboOnOff.ValueMember = "Value";
            //cboOnOff.DisplayMember = "Name";
            //cboOnOff.DataSource = _common.GetOnOff();
            //cboOnOff.SelectedItem = clsCommon.ApproveTimesheet.All;
        }

        private void BindStatus()
        {
            //cboStatus.ValueMember = "Value";
            //cboStatus.DisplayMember = "Name";
            //cboStatus.DataSource = _common.GetStatusApprove();
            //cboStatus.SelectedItem = clsCommon.ApproveTimesheet.All;

        }

        private void SetDefauldFilterTime()
        {
            //radMonth.Checked = true;
            //cboWeek.Enabled = false;
        }

        private void BindYear()
        {

            //cboYear.DataSource = _common.GetYearNo();
            //cboYear.SelectedItem = DateTime.Now.Year;
        }

        private void SetFromToDate()
        {
            //dtpFromDate.Format = DateTimePickerFormat.Custom;
            //dtpFromDate.CustomFormat = clsCommon.ApproveTimesheet.DateFormatDisplay;

            //dtpToDate.Format = DateTimePickerFormat.Custom;
            //dtpToDate.CustomFormat = clsCommon.ApproveTimesheet.DateFormatDisplay;

            //if (cboMonth.Enabled == true)
            //{
            //    dtpFromDate.Value = _common.GetStartDateOfMonth(Int16.Parse(cboYear.SelectedItem.ToString()),
            //        Int16.Parse(cboMonth.SelectedItem.ToString()));
            //    dtpToDate.Value = _common.GetEndDateOfMonth(Int16.Parse(cboYear.SelectedItem.ToString()),
            //    Int16.Parse(cboMonth.SelectedItem.ToString()));
            //}
            //else
            //{
            //    dtpFromDate.Value = _common.GetFirstDateOfWeekISO8601(Int16.Parse(cboYear.SelectedItem.ToString()), Int16.Parse(cboWeek.SelectedItem.ToString()));
            //    dtpToDate.Value = _common.GetEndDateOfWeekISO8601(Int16.Parse(cboYear.SelectedItem.ToString()), Int16.Parse(cboWeek.SelectedItem.ToString()));

            //}


        }

        private void BindWeek()
        {
            //cboWeek.DataSource = _common.GetWeekNo(DateTime.Now.Year);
            //cboWeek.SelectedItem = clsCommon.GetWeek(DateTime.Now);
        }

        private void BindMonth()
        {
            //cboMonth.DataSource = _common.GetMonthNo();
            //cboMonth.SelectedItem = DateTime.Now.Month;
        }

        private void InitControls()
        {
            //try
            //{
            //    this.grdStores.AutoGenerateColumns = false;
            //    // Init controls' status
            //    //txtDistributors.Text = DISTRIBUTORS_DEFAUT;
            //    btnExport.Enabled = false;

            //    // Read file config
            //    this.OnGridDataSourceChanged();
            //}
            //catch (System.Exception ex)
            //{
            //    Log.Error(ex.Message, ex);
            //    MessageBox.Show(ex.Message);
            //}
        }



        private void OnSearchLichLamViec()
        {
            //try
            //{
            //    this.Cursor = Cursors.WaitCursor;

            //    // Get current TimePeriod
            //    //TimePeriod currentTimePeriod = new TimePeriod(int.Parse(cmbTimeperiodYear.SelectedItem.ToString()),
            //    //                    int.Parse(cmbTimeperiodMonth.SelectedItem.ToString()));

            //    // Rebuild columns of DataGridView
            //    this.grdStores.DataSource = null;
            //    //this.RebuildDisplaySetColumns(currentTimePeriod);
            //    this.grdStores.Refresh();
            //    var week = cboWeek.Enabled == true ? cboWeek.SelectedItem.ToString() : "";
            //    var fromDate = dtpFromDate.Value.ToString(clsCommon.ApproveTimesheet.DateFormatDb, CultureInfo.InvariantCulture);
            //    var toDate = dtpToDate.Value.ToString(clsCommon.ApproveTimesheet.DateFormatDb, CultureInfo.InvariantCulture);
            //    var teamLead = cboTruongNhomL1.SelectedValue.ToString();
            //    var team = txtMaNhom.Text;
            //    var status = cboStatus.SelectedValue.ToString() != "-1" ? cboStatus.SelectedValue.ToString() : "";
            //    var onOff = cboOnOff.SelectedValue.ToString() != "0" ? cboOnOff.SelectedText : "";
            //    var shift = cboShift.SelectedValue.ToString() != "0" ? cboShift.SelectedValue.ToString() : "";

            //    // Search stores
            //    //System.Data.DataTable dt = _lichLamViecBO.GetStoresWithinDisplayRegistration(channel, region, province, town, area, perfectStore,
            //    //                            psType, distributors, storeCode, storeName, storeAddress, currentTimePeriod);
            //    var lichLamViec = new ChamCongLichLamViecBo();
            //    var table = lichLamViec.GetChamCongLichLamViec(week, fromDate, toDate, teamLead, onOff, shift, status,
            //        team);

            //    grdStores.DataSource = table;

            //    // Show message if there is no store found
            //    if (grdStores.RowCount == 0)
            //    {
            //        MessageBox.Show(clsResources.GetMessage("message.FrmApproveTimesheet.Nodata"),
            //            clsResources.GetMessage("warnings.general"), MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    }

            //    //table.AcceptChanges();
            //    //grdStores.Refresh();
            //}
            //catch (System.Exception ex)
            //{
            //    Log.Error(ex.Message, ex);
            //    this.Cursor = Cursors.Default;

            //    MessageBox.Show(ex.Message);
            //}
            //finally
            //{
            //    this.Cursor = Cursors.Default;
            //}
        }


        private void OnGridDataSourceChanged()
        {
            //if (grdStores.RowCount == 0)
            //{

            //    btnExport.Enabled = false;
            //    btnXacNhan.Enabled = false;
            //    btnApproveSave.Enabled = false;
            //}
            //else
            //{
            //    // Check all stores and enable Delete button

            //    btnExport.Enabled = true;
            //    btnXacNhan.Enabled = true;
            //    btnApproveSave.Enabled = true;
            //}
        }


        private bool OnSaveClick()
        {
            //try
            //{
            //    var dtStores = grdStores.DataSource as System.Data.DataTable;
            //    if (dtStores == null || dtStores.Rows.Count == 0)
            //    {
            //        return true;
            //    }

            //    // There is no change
            //    if (dtStores.GetChanges() == null)
            //    {
            //        return true;
            //    }


            //    // Get TimePeriod

            //    Cursor.Current = Cursors.WaitCursor;
            //    var lichLamViec = new ChamCongLichLamViecBo();
            //    lichLamViec.UpdateChamCongLichLamViec(GetDataToSave());

            //    grdStores.Refresh();
            //    System.Windows.Forms.Application.DoEvents();

            //    return true;
            //}
            //catch (Exception ex)
            //{
            //    Log.Error(ex.Message, ex);
            //    throw ex;
            //}
            //finally
            //{
            //    Cursor.Current = Cursors.Default;
            //}

            return true;
        }
        public string ValidatedDateToSave()
        {
            //var strError = "";

            //var table = grdStores.DataSource as System.Data.DataTable;
            //if (table == null) return strError;


            //var lstError = (from DataRow row in table.Rows
            //                where (clsCommon.CheckTimeValue(row[ChamCongLichLamViecDAO.Vao_L1].ToString()) == "" ||
            //                clsCommon.CheckTimeValue(row[ChamCongLichLamViecDAO.Ra_L1].ToString()) == "") &&
            //                 (bool)row[ChamCongLichLamViecDAO.L1XacNhan] == false
            //                select String.Format(clsResources.GetMessage("message.FrmApproveTimesheet.LineInvalidTime"), row[ChamCongLichLamViecDAO.Vao_L1].ToString(), row[ChamCongLichLamViecDAO.Ra_L1].ToString()) + "\n"
            //              );

            //return lstError.Aggregate(strError, (current, strEr) => current + current);
            return "";
        }

        public List<ClsLichLamViec> GetDataToSave()
        {
            var lstLichLamViec = new List<ClsLichLamViec>();

            //var table = grdStores.DataSource as System.Data.DataTable;
            //if (table == null) return lstLichLamViec;

            //lstLichLamViec.AddRange(from DataRow row in table.Rows
            //                        where (row[ChamCongLichLamViecDAO.Vao_L1].ToString() != "" 
            //                        || row[ChamCongLichLamViecDAO.Ra_L1].ToString() != ""
            //                        || row[ChamCongLichLamViecDAO.CaThucTe].ToString() != row[ChamCongLichLamViecDAO.Ca_DienGiai].ToString()
            //                        || row[ChamCongLichLamViecDAO.OTHeSo1].ToString() != ""
            //                        || row[ChamCongLichLamViecDAO.OTHeSo2].ToString() != ""
            //                        || row[ChamCongLichLamViecDAO.OTHeSo3].ToString() != ""
            //                        || row[ChamCongLichLamViecDAO.LyDoNghi].ToString() != ""
            //                        || row[ChamCongLichLamViecDAO.MaUnilverNVThayThe].ToString() != ""
            //                        || row[ChamCongLichLamViecDAO.NhanVienThayThe_TenNgan].ToString() != ""

            //                        ) &&
            //                        (bool)row[ChamCongLichLamViecDAO.DaLayDuLieuChamCong] == true
            //                         && (bool)row[ChamCongLichLamViecDAO.L1XacNhan] == false
            //                        select new ClsLichLamViec
            //                        {
            //                            SysId = long.Parse(row[ChamCongLichLamViecDAO.SysID].ToString()),
            //                            Vao_L1 = clsCommon.CheckTimeValue(row[ChamCongLichLamViecDAO.Vao_L1].ToString()),
            //                            Ra_L1 = clsCommon.CheckTimeValue(row[ChamCongLichLamViecDAO.Ra_L1].ToString()),
            //                            OTL1 = row[ChamCongLichLamViecDAO.OTL1].ToString(),//(bool)row[ChamCongLichLamViecDAO.CoDangKyOT] == true ? clsCommon.CalOtTime(row[ChamCongLichLamViecDAO.Vao_L1].ToString(), row[ChamCongLichLamViecDAO.Ra_L1].ToString(), parChuanTinhCong).ToString(CultureInfo.InvariantCulture) : "",
            //                            Note = row[ChamCongLichLamViecDAO.Note].ToString(),
            //                            LastUpDate = DateTime.Now.ToString(clsCommon.ApproveTimesheet.DateFormatDb),
            //                            lastUpdateId = clsSystemConfig.UserName,

            //                            CaThucTe = row[ChamCongLichLamViecDAO.CaThucTe].ToString() ,
            //                            OtVaoSom = row[ChamCongLichLamViecDAO.OTVaoSom].ToString(),
            //                            OtRaTre = row[ChamCongLichLamViecDAO.OTRaTre].ToString(),
            //                            OtHeSo1 = row[ChamCongLichLamViecDAO.OTHeSo1].ToString(),
            //                            OtHeSo2 = row[ChamCongLichLamViecDAO.OTHeSo2].ToString(),
            //                            OtHeSo3 = row[ChamCongLichLamViecDAO.OTHeSo3].ToString(),
            //                            LyDoOt = row[ChamCongLichLamViecDAO.LyDoOT].ToString(),
            //                            DuocTinhCong = (bool)row[ChamCongLichLamViecDAO.DuocTinhCong],
            //                            LyDoNghi = row[ChamCongLichLamViecDAO.LyDoNghi].ToString(),
            //                            MaUnilverNvThayThe = row[ChamCongLichLamViecDAO.MaUnilverNVThayThe].ToString(),
            //                            NhanVienThayThe_TenNgan = row[ChamCongLichLamViecDAO.NhanVienThayThe_TenNgan].ToString()
            //                        });

            return lstLichLamViec;
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

        #region Handle events

        private void btnSearch_Click(object sender, EventArgs e)
        {
            //SearchData();
        }

        private void SearchData()
        {

            //if (CheckValidDate().Length == 0 || CheckValidDate().Length == -1)
            //{
            //    BindDataToGrid();
            //}
            //else
            //{
            //    MessageBox.Show(CheckValidDate());
            //}

        }


        public string CheckValidDate()
        {
            //var strError = "";
            //var parHanChot = parHanChotDuyetCong.Split('@')[1];
            //var rangeFistDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, Int16.Parse(parHanChot));
            //var rangeLastDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 25);

            //var fromDate = dtpFromDate.Value;
            //var toDate = dtpToDate.Value;
            //var month = cboMonth.SelectedItem.ToString();
            //if (toDate < fromDate)
            //{
            //    strError = strError + clsResources.GetMessage("message.FrmApproveTimesheet.ToDateInvalid") + "\n";
            //}
            //if (toDate >= _common.GetDateOfDb())
            //{
            //    strError = strError + clsResources.GetMessage("message.FrmApproveTimesheet.ToDateInvalid") + "\n";
            //}
            ////if (DateTime.Now > rangeFistDate && DateTime.Now <= rangeLastDate && toDate > rangeFistDate)
            ////{
            ////    strError = strError + clsResources.GetMessage("message.FrmApproveTimesheet.ToDateOutOfRange").Replace("{0}", rangeFistDate.ToString("dd/MM/yyyy")) + "\n";
            ////}
            //if (Int16.Parse(month) > _common.GetDateOfDb().Month)
            //{
            //    strError = strError + clsResources.GetMessage("message.FrmApproveTimesheet.MonthInvalid") + "\n";
            //}

            //return strError;
            return "";
        }

        private void BindDataToGrid()
        {
            //this.OnSearchLichLamViec();
            //this.ProcessDataRow();
        }



        private void ProcessDataRow()
        {
            //for (var i = 0; i < grdStores.Rows.Count; i++)
            //{
            //    //var aa = grdStores.Rows[i].Cells[0].Value;


            //    if ((bool)grdStores.Rows[i].Cells["L1XacNhan"].Value == true)
            //    {
            //        grdStores.Rows[i].ReadOnly = true;
            //        grdStores.Rows[i].DefaultCellStyle.BackColor = Color.Silver;
            //    }
            //    if ((bool)grdStores.Rows[i].Cells["L1XacNhan"].Value)
            //    {
            //        grdStores.Rows[i].ReadOnly = true;
            //        //grdStores.Rows[i].DefaultCellStyle.BackColor = Color.Silver;
            //    }
            //    grdStores.Rows[i].Cells[ChamCongLichLamViecDAO.Ngay].Value =
            //        clsCommon.FormatDateToDisplay(grdStores.Rows[i].Cells[ChamCongLichLamViecDAO.Ngay].Value.ToString());
            //}

        }


        private void btnSave_Click(object sender, EventArgs e)
        {
            parentForm.SetThoiGianNghiPhepStart(dtpTuNgay.Value);
            parentForm.SetThoiGianNghiPhepEnd(dtpDenNgay.Value);
            
            parentForm.SetLyDo(cbbLyDo.GetItemText(this.cbbLyDo.SelectedItem)); 
            parentForm.SetDIenGiai(txtDienGiai.Text);
            QuyetDinhNghiPhep quyetDinhNghiPhep = new QuyetDinhNghiPhep();
            quyetDinhNghiPhep.TuNgay = dtpTuNgay.Value;
            quyetDinhNghiPhep.DenNgay = dtpDenNgay.Value;
            quyetDinhNghiPhep.LyDo = cbbLyDo.GetItemText(this.cbbLyDo.SelectedItem);
            quyetDinhNghiPhep.LyDoChiTiet = cbbLyDoChiTiet.GetItemText(this.cbbLyDoChiTiet.SelectedItem);
            quyetDinhNghiPhep.DienGiai = txtDienGiai.Text;
            try
            {
                quyetDinhNghiPhep.SoNgayNghi = int.Parse(txtSndn.Text);
                parentForm.SetSoNgayDuocNghi(quyetDinhNghiPhep.SoNgayNghi);
            }catch{}
            quyetDinhNghiPhep.ChuThich = txtChuThich.Text;
            parentForm.SetQuyetDinhNghiPhep(quyetDinhNghiPhep);
            this.Close();

        }

        private void frmEditStore_Load(object sender, EventArgs e)
        {
           // InitControls();
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
            //var table = grdStores.DataSource as System.Data.DataTable;
            //if (table == null)
            //{
            //    return;
            //}
            //if (table.GetChanges() == null) return;
            //var dialogResult = MessageBox.Show(clsResources.GetMessage("message.Others.DataHasChanged") + Environment.NewLine
            //                                            + clsResources.GetMessage("message.Others.WantToSaveTheChanges"), clsResources.GetMessage("frmEditStore.Messages.Edit_Store"), MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);
            //switch (dialogResult)
            //{
            //    case DialogResult.Cancel:
            //        e.Cancel = true;
            //        break;
            //    case DialogResult.No:
            //        this.Hide();
            //        break;
            //    default:
            //        if (!this.OnSaveClick())
            //        {
            //            e.Cancel = true;
            //        }
            //        break;
            //}
        }

        private void btnExport_Click(object sender, EventArgs e)
        {
          //  this.Export();
        }



        #endregion

       
        public void SendEmailForL2()
        {
       

        }


        public List<ClsLichLamViec> GetDataToApproveSave()
        {
            var lstLichLamViec = new List<ClsLichLamViec>();


            return lstLichLamViec;
        }

     
        public string GetItemToGetTimesheet()
        {
          
            return "";
        }

     


        private void lblFromDate_Click(object sender, EventArgs e)
        {

        }

        private void lblToDate_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void cbbLyDo_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbbLyDoChiTiet.DataSource = _shareEntityDao.LoadLyDoChiTiet((int)cbbLyDo.SelectedValue);
        }

        private void dtpTuNgay_ValueChanged(object sender, EventArgs e)
        {
            if (dtpTuNgay.Value > dtpDenNgay.Value)
            {
                DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmNghiPhep.Waring"), clsResources.GetMessage("messages.frmNghiPhep.Title"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else {
                txtSndn.Text = ((dtpDenNgay.Value.Date - dtpTuNgay.Value.Date).TotalDays + 1).ToString();
            }
        }

        private void dtpDenNgay_ValueChanged(object sender, EventArgs e)
        {
             if ( dtpDenNgay.Value < dtpTuNgay.Value )
            {
                DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmNghiPhep.Waring1"), clsResources.GetMessage("messages.frmNghiPhep.Title"), MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else {
                txtSndn.Text = ((dtpDenNgay.Value.Date - dtpTuNgay.Value.Date).TotalDays + 1).ToString();
            }
        
        }
    }
}
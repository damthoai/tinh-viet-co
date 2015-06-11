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
    public partial class frmChinhSachGiaChiTiet : Form
    {
        #region Private fields

        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(typeof(frmChinhSachGiaChiTiet));

        private clsBaseBO _bo = new clsBaseBO();
        private readonly clsCommon _common = new clsCommon();
        private readonly ShareEntityDao _shareEntityDao = new ShareEntityDao();
        private readonly ThongTinKhamBenhDao _thongTinKhamBenhDao = new ThongTinKhamBenhDao();
        private readonly QuanLyThuocDao _quanLyThuocDao = new QuanLyThuocDao();
        QuyetDinhNghiPhep quyetDinhNghiPhep ;
        private Dictionary<int, string> danhSachThuoc = new Dictionary<int, string>();
        readonly System.Data.DataTable _dt = null;
        ComboBox cbm;
        DataGridViewCell currentCell;
        private string maChinhSachGia;
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
        private List<DonViTinh> listDonViTinh = new List<DonViTinh>();
        readonly DataGridViewColumn _originalColumns;
        private DataTable _dtApproveTimesheet;

        #endregion

        #region Constructors

        public frmChinhSachGiaChiTiet()
        {

            InitializeComponent();

            clsTitleManager.InitTitle(this);

            this.Text = "CHI TIẾT CHÍNH SÁCH GIÁ";
           // txtMaChinhSachGia.Text = maChinhSachGia;
            // Save original columns
           // _originalColumns = new DataGridViewColumn[grdStores.Columns.Count;
           // grdStores.Columns.CopyTo(_originalColumns, 0);
           // grdStores.Sorted += grdStores_Sorted;
        }

        public void SetMaChinhSachGia(string value)
        {
            this.maChinhSachGia = value;
            txtMaChinhSachGia.Text = value;
            SetDefauldValue();
        }

        
        private void SetDefauldValue()
        {        
            
            BuildGridViewRow();
            listDonViTinh = _shareEntityDao.LoadDonViTinh();
        }
       
        
      
        private void BuildGridViewRow()
        {
            List<ChinhSachGiaChiTiet> listChinhSachGiaChiTiet = _quanLyThuocDao.GetChinhSachGiaChiTiet(maChinhSachGia);
            if (listChinhSachGiaChiTiet == null || listChinhSachGiaChiTiet.Count == 0)
            {
                DataGridViewCheckBoxColumn checkBoxColumn = new DataGridViewCheckBoxColumn();
                checkBoxColumn.Width = 60;
                grdToaThuoc.Columns.Add(checkBoxColumn);

                DataGridViewTextBoxColumn tenThuocColumn = new DataGridViewTextBoxColumn();
                tenThuocColumn.HeaderText = "Tên thuốc";
                tenThuocColumn.ReadOnly = true;
                tenThuocColumn.Width = 140;
                tenThuocColumn.DataPropertyName = "MedicineName";
                grdToaThuoc.Columns.Add(tenThuocColumn);

                DataGridViewComboBoxColumn col = new DataGridViewComboBoxColumn();
                col.Width = 140;
                col.HeaderText = "Mã thuốc";
                col.DataSource = _shareEntityDao.LoadThongTinThuoc();
                //col.DisplayMember = "MedicineID";
                //col.ValueMember = "MedicineID";
                col.DataPropertyName = "MedicineID";
                col.DisplayMember = "MaThuocYTeHienThi";
                col.ValueMember = "MedicineID";
                grdToaThuoc.Columns.Add(col);


                DataGridViewTextBoxColumn giaColumn = new DataGridViewTextBoxColumn();
                giaColumn.Width = 130;
                giaColumn.HeaderText = "Giá";
                giaColumn.DataPropertyName = "GiaDNMua";
                grdToaThuoc.Columns.Add(giaColumn);

                DataGridViewTextBoxColumn giaColumnVat = new DataGridViewTextBoxColumn();
                giaColumnVat.Width = 140;
                giaColumnVat.HeaderText = "Giá VAT";
                giaColumnVat.DataPropertyName = "GiaDNMuaVAT";
                grdToaThuoc.Columns.Add(giaColumnVat);

  
                DataGridViewComboBoxColumn donViTinhColumn = new DataGridViewComboBoxColumn();
                donViTinhColumn.Width = 150;
                donViTinhColumn.HeaderText = "Đơn vị tính";
                donViTinhColumn.DataSource = _shareEntityDao.LoadDonViTinh();
                donViTinhColumn.DisplayMember = "TenDonViTinh";
                donViTinhColumn.ValueMember = "MaDonViTinh";
                donViTinhColumn.DataPropertyName = "DonViTinh";
                grdToaThuoc.Columns.Add(donViTinhColumn);

                DataGridViewTextBoxColumn soLuongColumn = new DataGridViewTextBoxColumn();
                soLuongColumn.Width = 150;
                soLuongColumn.HeaderText = "Diễn giải";
                soLuongColumn.DataPropertyName = "DienGiai";
                grdToaThuoc.Columns.Add(soLuongColumn);

                DataGridViewCheckBoxColumn hoatDongColumn = new DataGridViewCheckBoxColumn();
                hoatDongColumn.Width = 100;
                hoatDongColumn.HeaderText = "Hoạt động";
                hoatDongColumn.DataPropertyName = "HoatDong";
                grdToaThuoc.Columns.Add(hoatDongColumn);

                grdToaThuoc.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellEndEdit);
                grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);
                int rowIndex = this.grdToaThuoc.Rows.Add(1);
            }
            else if (listChinhSachGiaChiTiet != null || listChinhSachGiaChiTiet.Count > 0)
            {
                DataGridViewCheckBoxColumn checkBoxColumn = new DataGridViewCheckBoxColumn();
                checkBoxColumn.Width = 60;
                grdToaThuoc.Columns.Add(checkBoxColumn);

                DataGridViewTextBoxColumn tenThuocColumn = new DataGridViewTextBoxColumn();
                tenThuocColumn.HeaderText = "Tên thuốc";
                tenThuocColumn.ReadOnly = true;
                tenThuocColumn.Width = 140;
                tenThuocColumn.DataPropertyName = "MedicineName";
                grdToaThuoc.Columns.Add(tenThuocColumn);

                DataGridViewComboBoxColumn col = new DataGridViewComboBoxColumn();
                col.Width = 140;
                col.HeaderText = "Mã thuốc";
                col.DataSource = _shareEntityDao.LoadThongTinThuoc();
                col.DataPropertyName = "MedicineID";
                col.DisplayMember = "MaThuocYTeHienThi";
                col.ValueMember = "MedicineID";
                grdToaThuoc.Columns.Add(col);


                DataGridViewTextBoxColumn giaColumn = new DataGridViewTextBoxColumn();
                giaColumn.Width = 130;
                giaColumn.HeaderText = "Giá";
                giaColumn.DataPropertyName = "GiaDNMua";
                grdToaThuoc.Columns.Add(giaColumn);

                DataGridViewTextBoxColumn giaColumnVat = new DataGridViewTextBoxColumn();
                giaColumnVat.Width = 140;
                giaColumnVat.HeaderText = "Giá VAT";
                giaColumnVat.DataPropertyName = "GiaDNMuaVAT";
                grdToaThuoc.Columns.Add(giaColumnVat);


                DataGridViewComboBoxColumn donViTinhColumn = new DataGridViewComboBoxColumn();
                donViTinhColumn.Width = 150;
                donViTinhColumn.HeaderText = "Đơn vị tính";
                donViTinhColumn.DataSource = _shareEntityDao.LoadDonViTinh();
                donViTinhColumn.DisplayMember = "TenDonViTinh";
                donViTinhColumn.ValueMember = "MaDonViTinh";
                donViTinhColumn.DataPropertyName = "DonViTinh";
                grdToaThuoc.Columns.Add(donViTinhColumn);

                DataGridViewTextBoxColumn soLuongColumn = new DataGridViewTextBoxColumn();
                soLuongColumn.Width = 150;
                soLuongColumn.HeaderText = "Diễn giải";
                soLuongColumn.DataPropertyName = "DienGiai";
                grdToaThuoc.Columns.Add(soLuongColumn);

                DataGridViewCheckBoxColumn hoatDongColumn = new DataGridViewCheckBoxColumn();
                hoatDongColumn.Width = 100;
                hoatDongColumn.HeaderText = "Hoạt động";
                hoatDongColumn.DataPropertyName = "HoatDong";
                grdToaThuoc.Columns.Add(hoatDongColumn);

                grdToaThuoc.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellEndEdit);
                grdToaThuoc.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(dataGridView1_EditingControlShowing);

                for (int i = 0; i < listChinhSachGiaChiTiet.Count; i++)
                {
                    this.grdToaThuoc.Rows.Add(1);
                    this.grdToaThuoc[1, i].Value = listChinhSachGiaChiTiet[i].MedicineName;
                    this.grdToaThuoc[2, i].Value = listChinhSachGiaChiTiet[i].MedicineID;
                    this.grdToaThuoc[3, i].Value = listChinhSachGiaChiTiet[i].GiaDNMua;
                    this.grdToaThuoc[4, i].Value = listChinhSachGiaChiTiet[i].GiaDNMuaVAT;
                    this.grdToaThuoc[5, i].Value = listChinhSachGiaChiTiet[i].DonViTinh;
                    this.grdToaThuoc[6, i].Value = listChinhSachGiaChiTiet[i].DienGiai;
                    this.grdToaThuoc[7, i].Value = listChinhSachGiaChiTiet[i].HoatDong;
                }
                this.grdToaThuoc.Rows.Add(1);
            
            }




        }

       

        





        #endregion










        private int GetDonViTinh(string name)
        { 
            for(int i = 0 ;i < listDonViTinh.Count;i++)
            {
                if(listDonViTinh[i].TenDonViTinh == name)
                    return listDonViTinh[i].MaDonViTinh;
                else continue;
            }
            return 0;
        }

      
        private void btnLuuIn_Click(object sender, EventArgs e)
        {
            List<string> listmaThuoc = new List<string>();
            Dictionary<CustomKey, string> dic = _shareEntityDao.BuildTuDienThuoc();
            List<ChinhSachGiaChiTiet> listChinhSachGiaChiTiet = new List<ChinhSachGiaChiTiet>();
            
            for (int i = 0; i < grdToaThuoc.Rows.Count; i++)
            {

                ChinhSachGiaChiTiet chinhSachChiTiet = new ChinhSachGiaChiTiet();
                if ((string)grdToaThuoc.Rows[i].Cells[1].FormattedValue == "")
                    continue;
                
                chinhSachChiTiet.MaChinhSachGia = txtMaChinhSachGia.Text;
                chinhSachChiTiet.MedicineID = (string)grdToaThuoc.Rows[i].Cells[2].FormattedValue;
                chinhSachChiTiet.MedicineName = (string)grdToaThuoc.Rows[i].Cells[1].FormattedValue;
                chinhSachChiTiet.GiaDNMua = decimal.Parse((string)grdToaThuoc.Rows[i].Cells[3].FormattedValue);
                chinhSachChiTiet.GiaDNMuaVAT = decimal.Parse((string)grdToaThuoc.Rows[i].Cells[4].FormattedValue);
                chinhSachChiTiet.DonViTinh = GetDonViTinh((string)grdToaThuoc.Rows[i].Cells[5].FormattedValue);
                chinhSachChiTiet.DienGiai = (string)grdToaThuoc.Rows[i].Cells[6].FormattedValue;
                chinhSachChiTiet.HoatDong = (bool)grdToaThuoc.Rows[i].Cells[7].FormattedValue;
                //can load them thong tin bao hiem cho thuoc
                CustomKey ck = new CustomKey(chinhSachChiTiet.MedicineID, true);
                chinhSachChiTiet.MedicineID = dic[ck];
                if (!listmaThuoc.Contains(chinhSachChiTiet.MedicineID))
                {
                    listmaThuoc.Add(chinhSachChiTiet.MedicineID);
                }
                else
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChitTiet.CheckTrungLapThuoc"), clsResources.GetMessage("messages.frmKhamBenh.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
     
                }
                listChinhSachGiaChiTiet.Add(chinhSachChiTiet);
            }
            if (listChinhSachGiaChiTiet.Count > 0)
            {
                if (_quanLyThuocDao.UpdateChinhGiaChiTiet(listChinhSachGiaChiTiet))
                {
                    DialogResult result = MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.Success"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (result == DialogResult.OK)
                    {
                        Close();
                    }
                    return;
                }
                else {
                    MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.Error"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            /*
            ThongTinKhamBenh ttkb = BuildThongTinKhamBenh();
            if(ttkb != null ){
                if (_thongTinKhamBenhDao.SaveThongTinKhamBenh(ttkb))
                {
                    DialogResult result =  MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.Success"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.SuccessTitle"), MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (result == DialogResult.OK)
                    {
                        grdToaThuoc.Rows.Clear();
                        grdToaThuoc.Rows.Add(1);
                    }
                    return;
                }
                else
                {
                    MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.Error"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
             * */
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

        
        /*
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
                            MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.CheckValidSoLuong"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        //check thuoc trong kho
                        if (isValidSoLuongThuoc)
                        {
                            string maThuoc = this.grdToaThuoc[2, currentCell.RowIndex].Value.ToString();
                            int soLuongThuocTrongKho = _thongTinKhamBenhDao.CheckSoLuongThuocTrongKho(maThuoc, currentSoLuong);
                            if (soLuongThuocTrongKho == -1)
                            {
                                MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.CheckSoLuongTrongKho"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        }
                    }
                    catch {
                        MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.CheckValidSoLuong"), clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
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
        */

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
                            MessageBox.Show(clsResources.GetMessage("messages.frmChinhSachGiaChiTiet.CheckTrungLapThuoc1"), clsResources.GetMessage("messages.frmnhapkhothuoc.ErrorTitle"), MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        
                        this.grdToaThuoc[currentCell.ColumnIndex - 1, currentCell.RowIndex].Value = ttt.MedicineName;
                        this.grdToaThuoc[currentCell.ColumnIndex + 1, currentCell.RowIndex].Value = ttt.GiaDNMua;
                        this.grdToaThuoc[currentCell.ColumnIndex + 2, currentCell.RowIndex].Value = ttt.GiaDNMuaVAT;
                        this.grdToaThuoc[currentCell.ColumnIndex + 3, currentCell.RowIndex].Value = ttt.DonViTinh;
                        this.grdToaThuoc[currentCell.ColumnIndex + 4, currentCell.RowIndex].Value = ttt.DienGiai;
                        this.grdToaThuoc[currentCell.ColumnIndex + 5, currentCell.RowIndex].Value = ttt.HoatDong;
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
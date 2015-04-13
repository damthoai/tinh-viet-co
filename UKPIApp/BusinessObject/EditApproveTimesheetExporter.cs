using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using FPT.Component.ExcelPlus;
using UKPI.DataAccessObject;
using UKPI.Utils;
using System.Drawing;

namespace UKPI.BusinessObject
{
    public class EditApproveTimesheetExporter : Exporter
    {
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(Logger));
        private IErrorLogger _logger = new Logger(log);
        private IList<System.Data.DataTable> _exportTables = new List<DataTable>();

        private string _channel;
        private bool _exportFailResult;

        private int _columnBeginOfBasicDS = 0;
        private int _columnEndOfBasicDS = 0;
        private int _columnBeginOfExtraDS = 0;
        private int _columnEndOfExtraDS = 0;
        private int _countNoOfRow = 0;
     //   private TimePeriod _currentTimePeriod;
      
      //  private List<ExtraDisplaySetBO> _extraDisplaySetList;

        public EditApproveTimesheetExporter(bool exportFailResult)//, TimePeriod timePeriod
            : base()
        {
          //  _currentTimePeriod = timePeriod;
          //  _basicDisplaySetList = BasicDisplaySetBO.GetAllActiveBasicDisplaySet();//timePeriod
          //  _extraDisplaySetList = ExtraDisplaySetBO.GetAllActiveExtraDisplaySet(timePeriod);

            _columnBeginOfBasicDS = 21;
            //_columnEndOfBasicDS = _columnBeginOfBasicDS + _basicDisplaySetList.Count - 1;
            _columnBeginOfExtraDS = _columnEndOfBasicDS + 1;
          //  _columnEndOfExtraDS = _columnBeginOfExtraDS + _extraDisplaySetList.Count - 1;

            _exportFailResult = exportFailResult;
        }

        protected override IList<System.Data.DataTable> ExportTableCollection
        {
            get { return _exportTables; }
        }

        protected override IErrorLogger Logger
        {
            get { return _logger; }
        }

        private DataTable GetExportTableSchema()
        {
            DataTable dtSchema = new DataTable();
            dtSchema.TableName = "XacNhanChamCong";

            // Add first blank colum
            dtSchema.Columns.Add("BLANK1");

            // Add columns of store's information
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Ca_DienGiai);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.TruongNhom_TenNgan);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.NgayTrongTuan);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Ngay);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.NgayRa);

            dtSchema.Columns.Add(ChamCongLichLamViecDAO.NhanVien_Ten);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.IsOutSource);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Vao);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Ra);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Vao_L1);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Ra_L1);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.On_Off);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.CoDangKyOT);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.OTHeThongTinh);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.OTL1);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.CoPhep);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.DuocTinhCong);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.L0XacNhan_TenNgan);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.L1XacNhan_TenNgan);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.L2XacNhan_TenNgan);

            dtSchema.Columns.Add(ChamCongLichLamViecDAO.L3XacNhan_TenNgan);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.NhanVienThayThe_TenNgan);
            dtSchema.Columns.Add(ChamCongLichLamViecDAO.Note);

            // Add BasicDisplaySet columns
            //foreach (BasicDisplaySetBO basicDS in _basicDisplaySetList)
            //{
            //    dtSchema.Columns.Add(basicDS.Code);
            //}

            //// Add ExtraDisplaySet columns
            //foreach (ExtraDisplaySetBO extraDS in _extraDisplaySetList)
            //{
            //    dtSchema.Columns.Add(extraDS.Code);
            //}

            //// For export fail result of Import
            //if (_exportFailResult)
            //{
            //    dtSchema.Columns.Add(EditStoreImporter.ERROR_MESSAGE);
            //}

            return dtSchema;

        }

        private DataTable ConvertDataTable2ExportFormat(DataTable dt)
        {
            DataTable dtResult = this.GetExportTableSchema();

            _countNoOfRow = dt.Rows.Count;
            // Fill data to excel formatted table
            DataRow drDataTemp;

            #region Add title and column headers
            // Add title "Table export"
            drDataTemp = dtResult.NewRow();
            drDataTemp[ChamCongLichLamViecDAO.Ca_DienGiai] = "Danh Sách Chấm Công - Xuất ngày " + DateTime.Now.ToString("dd/MM/yyyy");
            dtResult.Rows.Add(drDataTemp);

            // Add first blank row
            drDataTemp = dtResult.NewRow();
            dtResult.Rows.Add(drDataTemp);


            // Add Colum Header
            drDataTemp = dtResult.NewRow();
            drDataTemp[ChamCongLichLamViecDAO.Ca_DienGiai] = "Ca Làm Việc";
            drDataTemp[ChamCongLichLamViecDAO.TruongNhom_TenNgan] = "Trưởng Nhóm";
            drDataTemp[ChamCongLichLamViecDAO.NgayTrongTuan] = "Ngày Trong Tuần";
            drDataTemp[ChamCongLichLamViecDAO.Ngay] = "Ngày Vào";
            drDataTemp[ChamCongLichLamViecDAO.NgayRa] = "Ngày Ra";
            drDataTemp[ChamCongLichLamViecDAO.NhanVien_Ten] = "Nhân Viên";
            drDataTemp[ChamCongLichLamViecDAO.IsOutSource] = "Outsource";
            drDataTemp[ChamCongLichLamViecDAO.Vao] = "Vào";
            drDataTemp[ChamCongLichLamViecDAO.Ra] = "Ra";
            drDataTemp[ChamCongLichLamViecDAO.Vao_L1] = "Vào L1";
            drDataTemp[ChamCongLichLamViecDAO.Ra_L1] = "Ra L1";
            drDataTemp[ChamCongLichLamViecDAO.On_Off] = "On/Off";
            drDataTemp[ChamCongLichLamViecDAO.CoDangKyOT] = "Có DK OT";
            drDataTemp[ChamCongLichLamViecDAO.OTHeThongTinh] = "OT Hệ Thống";
            drDataTemp[ChamCongLichLamViecDAO.OTL1] = "OT L1";
            drDataTemp[ChamCongLichLamViecDAO.CoPhep] = "Có Phép";
            drDataTemp[ChamCongLichLamViecDAO.DuocTinhCong] = "Được Tính Công";
            drDataTemp[ChamCongLichLamViecDAO.L0XacNhan_TenNgan] = "L0 Xác Nhận";
            drDataTemp[ChamCongLichLamViecDAO.L1XacNhan_TenNgan] = "L1 Xác Nhận";
            drDataTemp[ChamCongLichLamViecDAO.L2XacNhan_TenNgan] = "L2 Xác Nhận";

            drDataTemp[ChamCongLichLamViecDAO.L3XacNhan_TenNgan] = "L3 Xác Nhận";
            drDataTemp[ChamCongLichLamViecDAO.NhanVienThayThe_TenNgan] = "Nhân Viên Thay Thế";
            drDataTemp[ChamCongLichLamViecDAO.Note] = "Ghi Chú";





            //foreach (BasicDisplaySetBO basicDS in _basicDisplaySetList)
            //{
            //    drDataTemp[basicDS.Code] = basicDS.Name;
            //}
            //foreach (ExtraDisplaySetBO extraDS in _extraDisplaySetList)
            //{
            //    drDataTemp[extraDS.Code] = extraDS.Name;
            //}

            dtResult.Rows.Add(drDataTemp);

            #endregion

            // Add store list
            foreach (DataRow dr in dt.Rows)
            {
                drDataTemp = dtResult.NewRow();



                drDataTemp[ChamCongLichLamViecDAO.Ca_DienGiai] = dr[ChamCongLichLamViecDAO.Ca_DienGiai];
                drDataTemp[ChamCongLichLamViecDAO.TruongNhom_TenNgan] = dr[ChamCongLichLamViecDAO.TruongNhom_TenNgan];
                drDataTemp[ChamCongLichLamViecDAO.NgayTrongTuan] = dr[ChamCongLichLamViecDAO.NgayTrongTuan];
                drDataTemp[ChamCongLichLamViecDAO.Ngay] = dr[ChamCongLichLamViecDAO.Ngay];
                drDataTemp[ChamCongLichLamViecDAO.NgayRa] = dr[ChamCongLichLamViecDAO.NgayRa];

                drDataTemp[ChamCongLichLamViecDAO.NhanVien_Ten] = dr[ChamCongLichLamViecDAO.NhanVien_Ten];
                drDataTemp[ChamCongLichLamViecDAO.IsOutSource] = dr[ChamCongLichLamViecDAO.IsOutSource];
                drDataTemp[ChamCongLichLamViecDAO.Vao] = dr[ChamCongLichLamViecDAO.Vao];
                drDataTemp[ChamCongLichLamViecDAO.Ra] = dr[ChamCongLichLamViecDAO.Ra];
                drDataTemp[ChamCongLichLamViecDAO.Vao_L1] = dr[ChamCongLichLamViecDAO.Vao_L1];
                drDataTemp[ChamCongLichLamViecDAO.Ra_L1] = dr[ChamCongLichLamViecDAO.Ra_L1];
                drDataTemp[ChamCongLichLamViecDAO.On_Off] = dr[ChamCongLichLamViecDAO.On_Off];
                drDataTemp[ChamCongLichLamViecDAO.CoDangKyOT] = dr[ChamCongLichLamViecDAO.CoDangKyOT];
                drDataTemp[ChamCongLichLamViecDAO.OTHeThongTinh] = dr[ChamCongLichLamViecDAO.OTHeThongTinh];
                drDataTemp[ChamCongLichLamViecDAO.OTL1] = dr[ChamCongLichLamViecDAO.OTL1];
                drDataTemp[ChamCongLichLamViecDAO.CoPhep] = dr[ChamCongLichLamViecDAO.CoPhep];
                drDataTemp[ChamCongLichLamViecDAO.DuocTinhCong] = dr[ChamCongLichLamViecDAO.DuocTinhCong];
                drDataTemp[ChamCongLichLamViecDAO.L0XacNhan_TenNgan] = dr[ChamCongLichLamViecDAO.L1XacNhan_TenNgan];
                drDataTemp[ChamCongLichLamViecDAO.L1XacNhan_TenNgan] = dr[ChamCongLichLamViecDAO.L1XacNhan_TenNgan];
                drDataTemp[ChamCongLichLamViecDAO.L2XacNhan_TenNgan] = dr[ChamCongLichLamViecDAO.L2XacNhan_TenNgan];

                drDataTemp[ChamCongLichLamViecDAO.L3XacNhan_TenNgan] = dr[ChamCongLichLamViecDAO.L3XacNhan_TenNgan];
                drDataTemp[ChamCongLichLamViecDAO.NhanVienThayThe_TenNgan] = dr[ChamCongLichLamViecDAO.NhanVienThayThe_TenNgan];
                drDataTemp[ChamCongLichLamViecDAO.Note] = dr[ChamCongLichLamViecDAO.Note];



                //foreach (BasicDisplaySetBO basicDS in _basicDisplaySetList)
                //{
                //    drDataTemp[basicDS.Code] = dr[basicDS.Code];
                //}
                //foreach (ExtraDisplaySetBO extraDS in _extraDisplaySetList)
                //{
                //    drDataTemp[extraDS.Code] = dr[extraDS.Code];
                //}


                dtResult.Rows.Add(drDataTemp);
            }

            return dtResult;
        }

        public void AddExportTable(DataTable dt)
        {
            // _channel = channel;
            _exportTables.Add(this.ConvertDataTable2ExportFormat(dt));
        }

        public void ClearExportTable()
        {
            _exportTables.Clear();
        }

        protected override IList<FRangeAddress> GetMergeCellCollection(int sheetNo)
        {
            IList<FRangeAddress> result = new List<FRangeAddress>();

            // Merge cells of "Basic Display Set" and  "Optional Display Set"
            result.Add(new FRangeAddress(9, _columnBeginOfBasicDS, 9, _columnEndOfBasicDS));
            result.Add(new FRangeAddress(9, _columnBeginOfExtraDS, 9, _columnEndOfExtraDS));

            return result;
        }

        protected override IList<RangesFormat<CellStyle>> GetRangeFormatCollection(int sheetNo)
        {
            List<RangesFormat<CellStyle>> result = new List<RangesFormat<CellStyle>>();
            RangesFormat<CellStyle> format;

            // Edit Store
            //format = new RangesFormat<CellStyle>();
            //format.Ranges.Add( new FRangeAddress(2, 2, 2, 4));
            //format.Format.BackGroundColor = Color.FromArgb(128, 0, 0);
            //format.Format.TextStyle.TextColor = Color.White;
            //format.Format.TextStyle.Bold = true;
            //result.Add(format);

            // Channel
            format = new RangesFormat<CellStyle>();
            format.Ranges.Add(new FRangeAddress(1, 2, 1, 4));
            format.Format.BackGroundColor = Color.FromArgb(153, 51, 0);
            format.Format.TextStyle.TextColor = Color.White;
            format.Format.TextStyle.Size = 14;
            format.Format.TextStyle.Bold = true;
            result.Add(format);

            //// Time period
            //format = new RangesFormat<CellStyle>();
            //format.Ranges.Add(new FRangeAddress(4, 2, 4, 4));
            //format.Format.BackGroundColor = Color.FromArgb(228, 109, 10);
            //format.Format.TextStyle.TextColor = Color.White;
            //format.Format.TextStyle.Bold = true;
            //result.Add(format);

            //// Export date
            //format = new RangesFormat<CellStyle>();
            //format.Ranges.Add( new FRangeAddress(5, 2, 5, 4));
            //format.Format.BackGroundColor = Color.FromArgb(255, 204, 153);
            //format.Format.TextStyle.TextColor = Color.Blue;
            //result.Add(format);
            BorderStyle bdStyle = new BorderStyle();
            bdStyle.BorderColor = Color.Black;
            bdStyle.Weight = BorderWeight.Thin;
            bdStyle.Style = LineStyle.Thin;



            // Column headers: black background
            format = new RangesFormat<CellStyle>();
            format.Ranges.Add(new FRangeAddress(3, 2, 3, _columnEndOfExtraDS + 3));
            format.Format.HAlign = FHorizontalAlignment.Left;
            format.Format.BackGroundColor = Color.White;
            format.Format.TextStyle.TextColor = Color.Black;
            format.Format.Border.Top = bdStyle;
            format.Format.Border.Left = bdStyle;
            format.Format.Border.Right = bdStyle;
            format.Format.Border.Bottom = bdStyle;
            format.Format.TextStyle.Bold = true;
            format.Format.TextStyle.Underline = true;

            result.Add(format);

            // Define bolder style


            // Bolder "Basic Display Set"
            format = new RangesFormat<CellStyle>();



            format.Ranges.Add(new FRangeAddress(4, 2, _countNoOfRow + 3, _columnEndOfExtraDS + 3));
            format.Format.Border.Top = bdStyle;
            format.Format.Border.Left = bdStyle;
            format.Format.Border.Right = bdStyle;
            format.Format.Border.Bottom = bdStyle;
            format.Format.HAlign = FHorizontalAlignment.Center;

            result.Add(format);



            //// Bolder "Extra Display Set"
            //format = new RangesFormat<CellStyle>();

            //format.Ranges.Add(new FRangeAddress(9, _columnBeginOfExtraDS, 9, _columnEndOfExtraDS));
            //format.Format.Border.Top = bdStyle;
            //format.Format.Border.Left = bdStyle;
            //format.Format.Border.Right = bdStyle;
            //format.Format.Border.Bottom = bdStyle;
            //format.Format.HAlign = FHorizontalAlignment.Center;
            //format.Format.TextStyle.Bold = true;
            //result.Add(format);

            return result;
        }

        protected override IList<SizeFormat> ColumnWidthCollection
        {
            get
            {
                IList<SizeFormat> columnWidth = new List<SizeFormat>();
                SizeFormat size = new SizeFormat();
                size.AutoSize = true;
                size.SheetNumber = 1;

                // Set all columns as auto size
                for (int i = 1; i <= _columnEndOfExtraDS + 2; i++)
                {
                    size.Range.Add(i);
                }

                columnWidth.Add(size);

                return columnWidth;
            }
        }
    }
}

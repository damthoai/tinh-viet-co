using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using System.Web.UI.WebControls;



/// <summary>
/// Summary description for Utility
/// </summary>
public class Utilitys
{

    public static string kmMoney = "2000";
    private static readonly string[] VietnameseSigns = new string[]
                                                                {
                                                                "aAeEoOuUiIdDyY",
                                                                "áàạảãâấầậẩẫăắằặẳẵ",
                                                                "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",
                                                                "éèẹẻẽêếềệểễ",
                                                                "ÉÈẸẺẼÊẾỀỆỂỄ",
                                                                "óòọỏõôốồộổỗơớờợởỡ",
                                                                "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",
                                                                "úùụủũưứừựửữ",
                                                                "ÚÙỤỦŨƯỨỪỰỬỮ",
                                                                "íìịỉĩ",
                                                                "ÍÌỊỈĨ",
                                                                "đ",
                                                                "Đ",
                                                                "ýỳỵỷỹ",
                                                                "ÝỲỴỶỸ"
                                                                };
    public Utilitys()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string get_date_server(string clientDate)
    {
        string format;
        DateTime result;
        CultureInfo provider = CultureInfo.InvariantCulture;

        //dateString = "20111224235959";
        format = "dd/MM/yyyy";
        try
        {
            result = DateTime.ParseExact(clientDate, format, provider);

        }
        catch (FormatException)
        {
            result = DateTime.Now;
        }
        return result.ToString("yyyyMMdd");
    }
    public static string parse_datetime_server(string dateString)
    {

        string format;
        DateTime result;
        CultureInfo provider = CultureInfo.InvariantCulture;

        //dateString = "20111224235959";
        format = "yyyyMMdd";
        try
        {
            result = DateTime.ParseExact(dateString, format, provider);

        }
        catch (FormatException)
        {
            result = DateTime.Now;
        }
        return result.ToString("dd/MM/yyyy");
    }


    public static DateTime parse_datetime(string dateString)
    {

        string format;
        DateTime result;
        CultureInfo provider = CultureInfo.InvariantCulture;

        //dateString = "20111224235959";
        format = "yyyyMMdd";
        try
        {
            result = DateTime.ParseExact(dateString, format, provider);

        }
        catch (FormatException)
        {
            result = DateTime.Now;
        }
        return result;
    }

    public static string parseDatetime(string date)
    {
        return convertDatetime(date).ToString("MM/dd/yyyy");
    }
    public static DateTime convertDatetime(string date)
    {
        System.Globalization.DateTimeFormatInfo dtfi = new System.Globalization.DateTimeFormatInfo();
        dtfi.ShortDatePattern = "dd/MM/yyyy";
        dtfi.DateSeparator = "/";
        DateTime datec = Convert.ToDateTime(date, dtfi);
        return datec;
    }
    public static string MaNgauNhien_So(int codeCount)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9";
        string[] allCharArray = allChar.Split(',');
        string randomCode = "";
        int temp = -1;

        Random rand = new Random();
        for (int i = 0; i < codeCount; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
            }
            int t = rand.Next(10);
            if (temp != -1 && temp == t)
            {
                return MaNgauNhien_So(codeCount);
            }
            temp = t;
            randomCode += allCharArray[t];
        }
        return randomCode;
    }
    public static string RemoveSign4VietnameseString(string str)
    {

        //Tiến hành thay thế , lọc bỏ dấu cho chuỗi
        for (int i = 1; i < VietnameseSigns.Length; i++)
        {
            for (int j = 0; j < VietnameseSigns[i].Length; j++)
                str = str.Replace(VietnameseSigns[i][j], VietnameseSigns[0][i - 1]);
        }
        return str;
    }

    public static string Encrypt(string input)
    {
        //Declarations
        Byte[] originalBytes;
        Byte[] encodedBytes;
        MD5 md5;

        //Instantiate MD5CryptoServiceProvider, get bytes for original password and compute hash (encoded password)
        md5 = new MD5CryptoServiceProvider();
        originalBytes = ASCIIEncoding.Default.GetBytes(input);
        encodedBytes = md5.ComputeHash(originalBytes);

        //Convert encoded bytes back to a 'readable' string
        return BitConverter.ToString(encodedBytes);
    }

    //public static string UserLogin(string user, string password)
    //{
    //    //email login
    //    DataTable tb = EMPLOYEES.GetEmpLogin(user,Encrypt(password));

    //    if (tb.Rows.Count > 0)
    //    {

    //        StoreSessionLogin(tb.Rows[0]);
    //    }
    //    else
    //    {
    //        return "Login false" ;
    //    }

    //    return string.Empty;
    //}

    //public static void userLogout()
    //{
    //    //SessionObj sessionobj = new SessionObj();
    //    //sessionobj.SessionName = HttpContext.Current.Session[sode_constant.session.UserName].ToString();
    //    //Session_Controller.UpdateStatusOffline(sessionobj);

    //    SetNullSession();
    //}

    public static bool StringCompare(string s1, string s2)
    {
        if (s1 == null || s2 == null) return false;
        else return s1.ToLower().Equals(s2.ToLower());
    }

    public static bool StringCompare(object s1, object s2)
    {
        if (s1 == null || s2 == null) return false;
        else return s1.ToString().ToLower().Equals(s2.ToString().ToLower());
    }

    private static void StoreSessionLogin(DataRow row)
    {
        ////Clear Session
        //HttpContext.Current.Session.Clear();
        ////Store Session

        //HttpContext.Current.Session[Constants.Sessions.ID] = row[Constants.Sessions.ID].ToString();       
        //HttpContext.Current.Session[Constants.Sessions.USERNAME] = row[Constants.Sessions.USERNAME].ToString();
        ////Session[sode_constant.Session.USER_GROUP] = user.GroupId;
        //HttpContext.Current.Session[Constants.Sessions.PASSWORK] = row[Constants.Sessions.PASSWORK].ToString();
        //HttpContext.Current.Session[Constants.Sessions.POSISION_ID] = row[Constants.Sessions.POSISION_ID].ToString();
        //HttpContext.Current.Session[Constants.Sessions.POSISION_NAME] = row[Constants.Sessions.POSISION_ID].ToString();
        //HttpContext.Current.Session[Constants.Sessions.DEPARMENT_ID] = row[Constants.Sessions.DEPARMENT_ID].ToString();
        //HttpContext.Current.Session[Constants.Sessions.DEPARMENT_NAME] = row[Constants.Sessions.DEPARMENT_NAME].ToString();
        //HttpContext.Current.Session[Constants.Sessions.FULLNAME] = row[Constants.Sessions.FULLNAME].ToString();
        //HttpContext.Current.Session[Constants.Sessions.EMAIL] = row[Constants.Sessions.EMAIL].ToString();
        //HttpContext.Current.Session[Constants.Sessions.SIGNATURES] = row[Constants.Sessions.SIGNATURES].ToString(); 
     
    }

    private static void SetNullSession()
    {
        //Clear Session
        HttpContext.Current.Session.Clear();
    }

    public static string GetRandomPassword()
    {
       // return RandomText.GenerateNewPassword();
        return "";
    }

   
}
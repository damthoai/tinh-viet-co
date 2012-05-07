using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NewsController
/// </summary>
public class NewsController : BaseDAO
{
    public NewsController()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary>
    /// Add new News
    /// </summary>
    /// <param name="objNews"></param>
    /// <returns></returns>
    public static int InsertNews(News objNews)
    {
        return InsertNews(objNews, null);
    }

    public static int InsertNews(News objNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Title", SqlDbType.NVarChar, 250, ParameterDirection.Input,objNews.Title),
                        AddSqlPrameter("@Detail", SqlDbType.NVarChar, 2000, ParameterDirection.Input,objNews.Detail),
                        AddSqlPrameter("@CreateAt", SqlDbType.VarChar, 10, ParameterDirection.Input,objNews.CreateAt),
                        AddSqlPrameter("@CreateBy", SqlDbType.VarChar, 10, ParameterDirection.Input,objNews.CreateBy),
                        AddSqlPrameter("@CatId", SqlDbType.Int, 0, ParameterDirection.Input,objNews.CatId),
                        AddSqlPrameter("@Contents", SqlDbType.NText, 1024000, ParameterDirection.Input,objNews.Contents),
                        AddSqlPrameter("@Images", SqlDbType.NVarChar, 200, ParameterDirection.Input,objNews.Images),
                        AddSqlPrameter("@Flag", SqlDbType.Char, 1, ParameterDirection.Input,objNews.Flag)
                    };
            return ExecuteProcedureNonQuery(tran, "Insert_News", paramArray);
        }
        catch (Exception)
        {
            return 0;
        }


    }

    /// <summary>
    /// Update News
    /// </summary>
    /// <param name="objNews"></param>
    /// <returns></returns>
    public static int UpdateNews(News objNews)
    {
        return UpdateNews(objNews, null);
    }
    public static int UpdateNews(News objNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Id", SqlDbType.Int, 0, ParameterDirection.Input,objNews.Id),
                        AddSqlPrameter("@Title", SqlDbType.NVarChar, 250, ParameterDirection.Input,objNews.Title),
                        AddSqlPrameter("@Detail", SqlDbType.NVarChar, 2000, ParameterDirection.Input,objNews.Detail),
                        AddSqlPrameter("@CreateAt", SqlDbType.VarChar, 10, ParameterDirection.Input,objNews.CreateAt),
                        AddSqlPrameter("@CreateBy", SqlDbType.VarChar, 10, ParameterDirection.Input,objNews.CreateBy),
                        AddSqlPrameter("@CatId", SqlDbType.Int, 0, ParameterDirection.Input,objNews.CatId),
                        AddSqlPrameter("@Contents", SqlDbType.NText, 1024000, ParameterDirection.Input,objNews.Contents),
                        AddSqlPrameter("@Images", SqlDbType.NVarChar, 200, ParameterDirection.Input,objNews.Images),
                        AddSqlPrameter("@Flag", SqlDbType.Char, 1, ParameterDirection.Input,objNews.Flag)
                    };
            return ExecuteProcedureNonQuery(tran, "Update_News", paramArray);
        }
        catch (Exception)
        {
            return 0;
        }


    }

    /// <summary>
    /// Delete News
    /// </summary>
    /// <param name="objNews"></param>
    /// <returns></returns>
    public static int DeleteNews(News objNews)
    {
        return DeleteNews(objNews, null);
    }

    public static int DeleteNews(News objNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Id", SqlDbType.Int, 0, ParameterDirection.Input,objNews.Id)
                     
                    };
            return ExecuteProcedureNonQuery(tran, "Delete_News", paramArray);
        }
        catch (Exception)
        {
            return 0;
        }


    }

    /// <summary>
    /// Select One News
    /// </summary>
    /// <param name="objNews"></param>
    /// <returns></returns>
    public static DataTable SelectOneNews(News objNews)
    {
        return SelectOneNews(objNews, null);
    }
    public static DataTable SelectOneNews(News objNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Id", SqlDbType.Int, 0, ParameterDirection.Input,objNews.Id)                    
                    };
            return ExecuteProcedure(tran, "SelectOne_News", paramArray).Tables[0];
        }
        catch (Exception)
        {
            throw;
        }


    }

    /// <summary>
    /// Select Top News
    /// </summary>
    /// <param name="objNews"></param>
    /// <param name="top"></param>
    /// <returns></returns>
    public static DataTable SelectTopNews(News objNews, int top)
    {
        return SelectTopNews(objNews, top, null);
    }
    public static DataTable SelectTopNews(News objNews, int top, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                    AddSqlPrameter("@TopSelect", SqlDbType.Int, 0, ParameterDirection.Input,top)                
                    };
            return ExecuteProcedure(tran, "SelectTop_News", paramArray).Tables[0];
        }
        catch (Exception)
        {
            throw;
        }


    }


    /// <summary>
    /// Select all News
    /// </summary>
    /// <param name="objNews"></param>
    /// <returns></returns>
    public static DataTable SelectAllNews()
    {
        return SelectAllNews(null);
    }
    public static DataTable SelectAllNews(SqlTransaction tran)
    {
        try
        {
            return ExecuteProcedure(tran, "SelectAll_News").Tables[0];
        }
        catch (Exception)
        {
            throw;
        }


    }

    /// <summary>
    /// Search News
    /// </summary>
    /// <param name="objNews"></param>
    /// <param name="top"></param>
    /// <returns></returns>
    public static DataTable SearchNews(string param)
    {
        return SearchNews(param, null);
    }
    public static DataTable SearchNews(string param, SqlTransaction tran)
    {
        string Cordition = " CateNewName LIKE '%" + param + "%' OR News.[Title] LIKE '%" + param + "%' OR News.[Detail] LIKE '%" + param + "%'";
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                    AddSqlPrameter("@param", SqlDbType.Int, 0, ParameterDirection.Input,Cordition)                
                    };
            return ExecuteProcedure(tran, "Search_News", paramArray).Tables[0];
        }
        catch (Exception)
        {
            throw;
        }


    }
}
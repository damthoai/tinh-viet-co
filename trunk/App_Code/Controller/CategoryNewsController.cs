using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for CategoryNewsController
/// </summary>
public class CategoryNewsController : BaseDAO
{
    public CategoryNewsController()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    /// <summary>
    /// Insert new Category News
    /// </summary>
    /// <param name="objCatNews"></param>
    /// <returns></returns>
    public static int InsertCategoryNews(CategoryNews objCatNews)
    {
        return InsertCategoryNews(objCatNews, null);
    }

    public static int InsertCategoryNews(CategoryNews objCatNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Name", SqlDbType.NVarChar, 250, ParameterDirection.Input,objCatNews.Name),
                        AddSqlPrameter("@Code", SqlDbType.VarChar, 250, ParameterDirection.Input,objCatNews.Code),
                        AddSqlPrameter("@CreateAt", SqlDbType.VarChar, 10, ParameterDirection.Input,objCatNews.CreateAt),
                        AddSqlPrameter("@CreateBy", SqlDbType.NVarChar, 250, ParameterDirection.Input,objCatNews.CreateBy),                        
                        AddSqlPrameter("@Flag", SqlDbType.Char, 1, ParameterDirection.Input,objCatNews.Flag)
                    };
            return ExecuteProcedureNonQuery(tran, "Insert_CategoryNews", paramArray);
        }
        catch (Exception)
        {

            throw;
        }
    }

    /// <summary>
    /// Update category News
    /// </summary>
    /// <param name="objCatNews"></param>
    /// <returns></returns>
    public static int UpdateCategoryNews(CategoryNews objCatNews)
    {
        return UpdateCategoryNews(objCatNews, null);
    }

    public static int UpdateCategoryNews(CategoryNews objCatNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Id", SqlDbType.Int,0, ParameterDirection.Input,objCatNews.Id),
                        AddSqlPrameter("@Name", SqlDbType.NVarChar, 250, ParameterDirection.Input,objCatNews.Name),
                        AddSqlPrameter("@Code", SqlDbType.VarChar, 250, ParameterDirection.Input,objCatNews.Code),
                        AddSqlPrameter("@CreateAt", SqlDbType.VarChar, 10, ParameterDirection.Input,objCatNews.CreateAt),
                        AddSqlPrameter("@CreateBy", SqlDbType.NVarChar, 250, ParameterDirection.Input,objCatNews.CreateBy),                        
                        AddSqlPrameter("@Flag", SqlDbType.Char, 1, ParameterDirection.Input,objCatNews.Flag)
                    };
            return ExecuteProcedureNonQuery(tran, "Update_CategoryNews", paramArray);
        }
        catch (Exception)
        {

            throw;
        }
    }


    /// <summary>
    /// Delete Category news
    /// </summary>
    /// <param name="objCatNews"></param>
    /// <returns></returns>
    public static int DeleteCategoryNews(CategoryNews objCatNews)
    {
        return DeleteCategoryNews(objCatNews, null);
    }
    public static int DeleteCategoryNews(CategoryNews objCatNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Id", SqlDbType.Int,0, ParameterDirection.Input,objCatNews.Id)
                      
                    };
            return ExecuteProcedureNonQuery(tran, "Delete_CategoryNews", paramArray);
        }
        catch (Exception)
        {

            throw;
        }
    }

    /// <summary>
    /// Select All catagory News
    /// </summary>
    /// <returns></returns>
    public static DataTable SelectAllCategoryNews()
    {
        return SelectAllCategoryNews(null);
    }
    public static DataTable SelectAllCategoryNews(SqlTransaction tran)
    {
        try
        {
            return ExecuteProcedure(tran, "SelectAll_CategoryNews").Tables[0];
        }
        catch (Exception)
        {

            throw;
        }
    }

    /// <summary>
    /// Select one category news by Id
    /// </summary>
    /// <param name="objCatNews"></param>
    /// <returns></returns>
    public static DataTable SelectOneCategoryNews(CategoryNews objCatNews)
    {
        return SelectOneCategoryNews(objCatNews, null);
    }
    public static DataTable SelectOneCategoryNews(CategoryNews objCatNews, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Id", SqlDbType.Int,0, ParameterDirection.Input,objCatNews.Id)
                      
                    };
            return ExecuteProcedure(tran, "SelectOne_CategoryNews", paramArray).Tables[0];
        }
        catch (Exception)
        {

            throw;
        }
    }

    /// <summary>
    /// Select one category news by Id
    /// </summary>
    /// <param name="objCatNews"></param>
    /// <returns></returns>
    public static DataTable SearchCategoryNews(string param)
    {
        return SearchCategoryNews(param, null);
    }
    public static DataTable SearchCategoryNews(string param, SqlTransaction tran)
    {
        try
        {
            SqlParameter[] paramArray = new SqlParameter[]
                    {
                        AddSqlPrameter("@Param", SqlDbType.NVarChar,250, ParameterDirection.Input,param)
                    };
            return ExecuteProcedure(tran, "Search_CategoryNews", paramArray).Tables[0];
        }
        catch (Exception)
        {

            throw;
        }
    }

}
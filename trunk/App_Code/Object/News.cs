using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for News
/// </summary>
public class News
{
    /// <summary>
    /// Property of table News in Database
    /// Id: primery key of News.
    /// CatId: catalogy of News.
    /// Title: Title of News.
    /// Detail: Detail of News.
    /// Content: Content of News.
    /// Images: Images.
    /// CreateAt: the Time Create News.
    /// CreateBy: User Create News.
    /// Flag: Status of News, Delete or Not Delete
    /// </summary>
    public int Id { get; set; }
    public string CatId { get; set; }
    public string Title { get; set; }
    public string Detail { get; set; }
    public string Contents { get; set; }
    public string Images { get; set; }
    public string CreateAt { get; set; }
    public string CreateBy { get; set; }
    public string Flag { get; set; }
    /// <summary>
    /// contructor not param
    /// </summary>
    public News()
    {

    }

}
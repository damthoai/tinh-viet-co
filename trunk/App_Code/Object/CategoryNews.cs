using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryNews
/// </summary>
public class CategoryNews
{
    /// <summary>
    /// Property of category news.
    /// Id: premary key.
    /// Name: Catagory Name.
    /// Code: Catalogy code like alias of category use positioning.
    /// Flag: status of Category (delete or not delete)
    /// CreateAt: time create new Category.
    /// CreateBy: User Create new Category.
    /// </summary>
    public int Id { get; set; }
    public string Name { get; set; }
    public string Code { get; set; }
    public string Flag { get; set; }
    public string CreateAt { get; set; }
    public string CreateBy { get; set; }
    /// <summary>
    /// Contructor
    /// </summary>
	public CategoryNews()
	{
		
	}
}
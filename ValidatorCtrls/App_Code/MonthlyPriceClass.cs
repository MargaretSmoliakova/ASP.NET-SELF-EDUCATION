using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// Summary description for MonthlyPriceClass
/// </summary>
public class MonthlyPriceClass
{    
    [Key, Required]
    public int Id { get; set; }

    [Required(ErrorMessage = "Name is required.)")]
    [StringLength(30, ErrorMessage = "Name can only be 10 charaters or less.")]
    public string Name { get; set; }
    
    [Required, StringLength(30)]
    public string Group { get; set; }
        
}



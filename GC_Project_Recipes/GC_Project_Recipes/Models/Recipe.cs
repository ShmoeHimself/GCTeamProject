//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GC_Project_Recipes.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Recipe
    {
        public Recipe()
        {
            this.Ingred_Recipe = new HashSet<Ingred_Recipe>();
        }
    
        public int Recipe_ID { get; set; }
        public string Prep_Time { get; set; }
        public string Cook_Time { get; set; }
        public Nullable<int> Servings { get; set; }
        public string Ingred_List { get; set; }
        public string Instructions { get; set; }
        public Nullable<decimal> Ingred_Amt { get; set; }
    
        public virtual ICollection<Ingred_Recipe> Ingred_Recipe { get; set; }
    }
}
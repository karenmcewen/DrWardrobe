using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace DrWardrobe.Models
{
    public class DrWardrobeContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public DrWardrobeContext() : base("name=DrWardrobeContext")
        {
        }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Accessory> Accessories { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Color> Colors { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Occasion> Occasions { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Season> Seasons { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Bottom> Bottoms { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.NeckWear> NeckWears { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.OuterWear> OuterWears { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Outfit> Outfits { get; set; }

        public System.Data.Entity.DbSet<DrWardrobe.Models.Top> Tops { get; set; }
    }
}

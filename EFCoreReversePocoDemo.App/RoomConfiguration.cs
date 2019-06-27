// <auto-generated>
// ReSharper disable ConvertPropertyToExpressionBody
// ReSharper disable DoNotCallOverridableMethodsInConstructor
// ReSharper disable EmptyNamespace
// ReSharper disable InconsistentNaming
// ReSharper disable PartialMethodWithSinglePart
// ReSharper disable PartialTypeWithSinglePart
// ReSharper disable RedundantNameQualifier
// ReSharper disable RedundantOverridenMember
// ReSharper disable UseNameofExpression
// TargetFrameworkVersion = 3
#pragma warning disable 1591    //  Ignore "Missing XML Comment" warning


namespace EFCoreReversePocoDemo.App
{

    // Room
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.4.0")]
    public class RoomConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<Room>
    {
        public RoomConfiguration()
            : this("dbo")
        {
        }

        public RoomConfiguration(string schema)
        {
            ToTable("Room", schema);
            HasKey(x => x.RoomId);

            Property(x => x.RoomId).HasColumnName(@"RoomId").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.HotelId).HasColumnName(@"HotelId").HasColumnType("int").IsRequired();
            Property(x => x.RoomNumber).HasColumnName(@"RoomNumber").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(20);
            Property(x => x.Price).HasColumnName(@"Price").HasColumnType("decimal").IsRequired().HasPrecision(18,0);
            Property(x => x.IsAvaliable).HasColumnName(@"IsAvaliable").HasColumnType("bit").IsRequired();
            Property(x => x.RoomDescription).HasColumnName(@"RoomDescription").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(200);

            // Foreign keys
            HasRequired(a => a.Hotel).WithMany(b => b.Rooms).HasForeignKey(c => c.HotelId).WillCascadeOnDelete(false); // FK_Room_Hotel
        }
    }

}
// </auto-generated>

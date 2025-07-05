using Microsoft.EntityFrameworkCore;
using Mission.Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Security;
using System.Text;
using System.Threading.Tasks;

namespace Mission.Entities.context
{
    public class MissionDbContext : DbContext
    {
        public MissionDbContext(DbContextOptions<MissionDbContext> options) : base(options) { }
        public DbSet<User> Users { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            AppContext.SetSwitch("Npgsql.EnableLegancyTimestampBehavior", true);
            modelBuilder.Entity<User>().HasData(new User()
            {
                Id = 1,
                FirstName = "Utsav",
                LastName = "Patoliya",
                EmailAddress = "utsavpatoliya3110@gmail.com",
                UserType = "admin",
                Password = "Utsav@123",
                PhoneNumber = "9737407005",
                CreatedDate = new DateTime(2019, 1, 1, 0, 0, 0, DateTimeKind.Utc)
            });
            base.OnModelCreating(modelBuilder);
        }
    }
}

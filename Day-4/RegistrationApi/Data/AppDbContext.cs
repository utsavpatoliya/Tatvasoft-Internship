using Microsoft.EntityFrameworkCore;
using RegistrationApi.Models;

namespace RegistrationApi.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }
        public DbSet<User> Users => Set<User>();
    }
} 
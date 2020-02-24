using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngWords.Models.Context
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options) {}

        public ApplicationDbContext()
        {
            // This is the magic line that made it work for me
            //SQLitePCL.raw.SetProvider(new SQLitePCL.SQLite3Provider_e_sqlite3());
            Database.EnsureCreated();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source=EWSqlite.sqlite");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Entity mappings
        }

        public DbSet<Word> Words { get; set; }
    }
}

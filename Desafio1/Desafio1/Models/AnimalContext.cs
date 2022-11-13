using System;
using Microsoft.EntityFrameworkCore;

namespace Desafio1.Models
{
	public class AnimalContext : Microsoft.EntityFrameworkCore.DbContext
    {
        public AnimalContext() : base() { }

        public DbSet<Dog> Dogs { get; set; }
        public DbSet<Cat> Cats { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            var connectionString = configuration.GetConnectionString("AnimalConnection");
            optionsBuilder.UseSqlServer(connectionString);
        }

    }
}


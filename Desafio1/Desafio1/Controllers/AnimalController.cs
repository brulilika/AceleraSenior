using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Desafio1.Data;
using Desafio1.Models;
using Microsoft.AspNetCore.Mvc;

namespace Desafio1.Controllers
{
    [Route("api/[controller]")]
    public class AnimalController : Controller
    {
        [HttpGet("/dogs")]
        public IEnumerable<Dog> GetDogs()
        {
            return new DogRepository().GetAllDogs();
        }

        [HttpGet("/cats")]
        public IEnumerable<Cat> GetCats()
        {
            return new CatRepository().GetAllCats();
        }

        [HttpGet("/dog/{id}")]
        public Dog GetDog(int id)
        {
            return new DogRepository().GetDogById(id);
        }

        [HttpGet("/cat/{id}")]
        public Cat GetCat(int id)
        {
            return new CatRepository().GetCatById(id);
        }

        [HttpPost("/dog")]
        public string Post([FromBody]Dog newDog)
        {
            return new DogRepository().InsertDog(newDog);
        }


        [HttpPost("/cat")]
        public string Post([FromBody] Cat newCat)
        {
            return new CatRepository().InsertCat(newCat);
        }

        [HttpPut("/dog")]
        public string Put([FromBody]Dog updateDog)
        {
            return new DogRepository().UpdateDog(updateDog);
        }

        [HttpPut("/cat")]
        public string Put([FromBody] Cat updateCat)
        {
            return new CatRepository().UpdateCat(updateCat);
        }

        [HttpDelete("/dog/{id}")]
        public string Delete(int id)
        {
            return new DogRepository().DeleteDog(id);
        }

        [HttpDelete("/cat/{id}")]
        public string DeleteCat(int id)
        {
            return new CatRepository().DeleteCat(id);
        }
    }
}


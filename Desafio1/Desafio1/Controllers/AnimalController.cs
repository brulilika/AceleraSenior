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
        [HttpGet("/animal")]
        public object GetAnimal(AnimalType animalType)
        {
            return new AnimalRepository().GetAllAnimal(animalType);
        }

        [HttpGet("/animal/{id}")]
        public object GetAnimalById(int id,AnimalType animalType)
        {
            return new AnimalRepository().GetAnimalById(id,animalType);
        }

        [HttpPost("/animal/{animalType}")]
        public string Post(AnimalType animalType, [FromBody] Object newAnimal)
        {
            return new AnimalRepository().InsertAnimal(newAnimal, animalType);
        }

        [HttpPut("/animal/{animalType}")]
        public string Put(AnimalType animalType, [FromBody] Object newAnimal)
        {
            return new AnimalRepository().UpdateAnimal(newAnimal, animalType);
        }

        [HttpDelete("/animal/{id}")]
        public string DeleterAnimal(int id, AnimalType animalType)
        {
            return new AnimalRepository().DeleteAnimal(id, animalType);
        }
    }
}


using System;
using System.Xml.Serialization;
using Desafio1.Models;
using Microsoft.AspNetCore.Mvc;

namespace Desafio1.Data
{
	public class AnimalRepository
	{
		public object GetAllAnimal(AnimalType animalType)
		{
			switch (animalType)
			{
				case AnimalType.DOG:
					return new DogRepository().GetAllDogs();
				case AnimalType.CAT:
					return new CatRepository().GetAllCats();
				default:return null;
			}
		}

        public object GetAnimalById(int id,AnimalType animalType)
        {
            switch (animalType)
            {
                case AnimalType.DOG:
                    return new DogRepository().GetDogById(id);
                case AnimalType.CAT:
                    return new CatRepository().GetCatById(id);
                default: return null;
            }
        }

        public string InsertAnimal(object newAnimal, AnimalType animalType)
        {
            switch (animalType)
            {
                case AnimalType.DOG:
                    return new DogRepository().InsertDog(Newtonsoft.Json.JsonConvert.DeserializeObject<Dog>(newAnimal.ToString()));
                case AnimalType.CAT:
                    return new CatRepository().InsertCat(Newtonsoft.Json.JsonConvert.DeserializeObject<Cat>(newAnimal.ToString()));
                default: return "Informe um tipo de animal";
            }
        }

        public string UpdateAnimal(object newAnimal, AnimalType animalType)
        {
            switch (animalType)
            {
                case AnimalType.DOG:
                    return new DogRepository().UpdateDog(Newtonsoft.Json.JsonConvert.DeserializeObject<Dog>(newAnimal.ToString()));
                case AnimalType.CAT:
                    return new CatRepository().UpdateCat(Newtonsoft.Json.JsonConvert.DeserializeObject<Cat>(newAnimal.ToString()));
                default: return "Informe um tipo de animal";
            }
        }

        public string DeleteAnimal(int id, AnimalType animalType)
        {
            switch (animalType)
            {
                case AnimalType.DOG:
                    return new DogRepository().DeleteDog(id);
                case AnimalType.CAT:
                    return new CatRepository().DeleteCat(id);
                default: return "Informe um tipo de animal";
            }
        }
    }
}


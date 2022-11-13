using System;
using System.Net;
using Desafio1.Models;

namespace Desafio1.Data
{
	public class DogRepository
	{
        public IEnumerable<Dog> GetAllDogs()
        {
            using (var ctx = new AnimalContext())
            {
                return ctx.Dogs.ToList();
            }
        }

        public Dog GetDogById(int id)
        {
            using (var ctx = new AnimalContext())
            {
                return ctx.Dogs.Find(id);
            }
        }

        public string InsertDog(Dog newDog)
        {
            using (var ctx = new AnimalContext())
            {
                try
                {
                    ctx.Dogs.Add(newDog);
                    ctx.SaveChanges();
                    return "Adicionado com sucesso!";
                }
                catch(Exception e)
                {
                    return e.Message;
                }
                
            }
        }

        public string UpdateDog(Dog updateDog)
        {
            using (var ctx = new AnimalContext())
            {
                try
                {
                    var dog = ctx.Dogs.Find(updateDog.Id);
                    if (dog != null)
                    {
                        dog.Name = updateDog.Name;
                        dog.Age = updateDog.Age;
                        dog.TypeWork = updateDog.TypeWork;
                        ctx.Dogs.Update(dog);
                        ctx.SaveChanges();
                        return "Atualizado com sucesso!";
                    }
                    else return "Inexistente";
                    
                }
                catch (Exception e)
                {
                    return e.Message;
                }

            }
        }

        public string DeleteDog(int id)
        {
            using (var ctx = new AnimalContext())
            {
                try
                {
                    var dog = ctx.Dogs.Find(id);
                    if (dog != null)
                    {
                        ctx.Dogs.Remove(dog);
                        ctx.SaveChanges();
                        return "Deleted";
                    }
                    else return "Inexistente";
                }
                catch (Exception e)
                {
                    return e.Message;
                }

            }
        }
    }
}


using System;
using Desafio1.Models;

namespace Desafio1.Data
{
	public class CatRepository
	{
        public IEnumerable<Cat> GetAllCats()
        {
            using (var ctx = new AnimalContext())
            {
                return ctx.Cats.ToList();
            }
        }

        public Cat GetCatById(int id)
        {
            using (var ctx = new AnimalContext())
            {
                return ctx.Cats.Find(id);
            }
        }

        public string InsertCat(Cat newCat)
        {
            using (var ctx = new AnimalContext())
            {
                try
                {
                    ctx.Cats.Add(newCat);
                    ctx.SaveChanges();
                    return "Adicionado com sucesso!";
                }
                catch (Exception e)
                {
                    return e.Message;
                }

            }
        }

        public string UpdateCat(Cat updateCat)
        {
            using (var ctx = new AnimalContext())
            {
                try
                {
                    var cat = ctx.Cats.Find(updateCat.Id);
                    if (cat != null)
                    {
                        cat.Name = updateCat.Name;
                        cat.Age = updateCat.Age;
                        cat.TypeMiaw = updateCat.TypeMiaw;
                        ctx.Cats.Update(cat);
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

        public string DeleteCat(int id)
        {
            using (var ctx = new AnimalContext())
            {
                try
                {
                    var cat = ctx.Cats.Find(id);
                    if (cat != null)
                    {
                        ctx.Cats.Remove(cat);
                        ctx.SaveChanges();
                        return "Removido com sucesso!";
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


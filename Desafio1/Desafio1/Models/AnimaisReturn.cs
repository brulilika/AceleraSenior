using System;
namespace Desafio1.Models
{
	public class AnimaisReturn
	{
        public Animal Animal { get; set; }

        public AnimalType AnimalType { get; set; }

        public Dog? Dog { get; set; }

        public Cat? Cat { get; set; }
    }
}


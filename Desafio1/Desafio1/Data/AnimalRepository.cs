using System;
using System.Xml.Serialization;
using Desafio1.Models;
using Microsoft.AspNetCore.Mvc;

namespace Desafio1.Data
{
	public class AnimalRepository
	{
		public AnimalRepository()
		{
		}

		public string AllTypes()
        {
			AnimalType.GetCustomAttribute<XmlEnumAttribute>().Name

        }
    }
}


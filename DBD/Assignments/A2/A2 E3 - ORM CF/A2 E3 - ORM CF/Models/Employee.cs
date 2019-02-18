using System;
using System.Collections.Generic;
using System.Text;

namespace A2_E3___ORM_CF.Models
{
	public class Employee
	{
		public int CPR_No { get; set; }
		public string Fname { get; set; }
		public string Lname { get; set; }
		public string Name { get { return this.Fname + " " + this.Lname; } }

		public string Adr_Street { get; set; }
		public int Adr_Zip { get; set; }
		public string Adr_City { get; set; }
		public int Phone { get; set; }
		public string Email { get; set; }

		public Department WorksFor { get; set; }
	}
}

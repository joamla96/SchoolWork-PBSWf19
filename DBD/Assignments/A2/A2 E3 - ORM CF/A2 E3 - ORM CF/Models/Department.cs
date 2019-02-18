using System;
using System.Collections.Generic;
using System.Text;

namespace A2_E3___ORM_CF.Models
{
	public class Department
	{
		public int No { get; set; }
		public string Name { get; set; }

		public IEnumerable<Employee> Employees { get; set; }
	}
}

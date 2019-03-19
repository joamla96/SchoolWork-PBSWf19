using System;
using System.Collections.Generic;
using System.Text;

namespace Week11 {
	public class StorageSystem {
		///	3. Supposed you are in team that should develop a storage system.
		///	The storage contains pallets with bottles of - lets say wine.
		///	A function in the system is about reservation of pallets to a given order. 
		///	These pallets do not contain the same amount of bottles.
		///	One way to reserve pallets to an order is to reserve a set of pallets, 
		///	such that the total amount of bottles is minimal but greater than or equal to the amount of bottles ordered.
		///		a. Give a precise description of this requirement.
		///		b. Make a specification of a component that can provide functionality for selecting the set of pallets to a given order.
		///		

		/// The system should take an input of an integer.
		/// It should then look up a list of pallets, 
		/// and pick them out in a way which returns the least amount of bottles
		/// that is euqal to or above the input.
		/// E.g. order list of pallets by number of bottles, least first
		/// take from the top, untill total count equals or surpasses the input.
		/// 
		/// Alternatively, in order to keep more pallets of smaller sizes for smaller orders
		/// Take the largest pallet, that does not exceed the input.
		/// Subtract amount of bottles from the input.
		/// Find the larget pallet, that does not exceed the remainder
		/// Repeat untill out of pallets, then take the smallest available pallet.
	}
}

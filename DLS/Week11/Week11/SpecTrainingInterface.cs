using System;
using System.Collections.Generic;
using System.Text;

namespace Week11 {
	interface SpecTrainingInterface {
		// a. x occurs in a
		// If x is a value in a, return true.
		// All other cases, return false.
		bool isIn(int[] a, int x);

		// b. x does not occurs in a
		// If x is not a value in a, return true.
		// All other cases, return false.
		bool isNotIn(int[] a, int x);

		// c. x occurs more than once in a
		// If the value of x occures more than once in a, return true.
		// All other cases, return false.
		bool hasDuplicate(int[] a, int x);

		// d. x occurs exactly once in a
		// If the value of x occures exactly one in a, return true.
		// All other cases, return false.
		bool hasNoDuplicate(int[] a, int x);

		// e. there is a value in a which is not equal to x
		// If a contains a value that is not equal to x, return true.
		// All other cases, return false.
		bool doesNotContain(int[] a, int x);

		// f. all the integers in a are different
		// If all the values of a are unique, return true.
		// All other cases, return false.
		bool allValuesUnique(int[] a);

		// g. all the integers in a are not equal to x
		// If all the values in a are not equal to x, return true.
		// All other cases, return false.
		bool allNotEqualTo(int[] a, int x);

		// h. x is a minimal value of a
		// If the value of x, is equal to the smallest value in a, return true.
		// All other cases, return false.
		bool isMinimalValue(int[] a, int x);

		// i. a is sorted in increasing order
		// If a is sorted in increasing order, return true.
		// All other cases, return false.
		bool isSortedIncreasing(int[] a);

		// j. x is a valid index of a
		// If x is an index in a, return true.
		// All other cases, return false.
		bool isIndexOf(int[] a, int x);

		// k. the length of a is a power of two and greater than x
		// If the lenght if a is a power of two, and is greater than x, return true.
		// All other cases, return false.
		bool lenghtIsGreatherThan(int[] a, int x);

		// l. no integers in a is a divisor of x
		// If all values of a is not divisible by x, return true.
		// All other cases, return false.
		bool notDivisibleBy(int[] a, int x);
	}
}

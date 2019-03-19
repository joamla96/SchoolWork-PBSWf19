using System;
using System.Collections.Generic;
using System.Text;

namespace Week11 {
	public class DidYouMean {
		/// Did You Mean should contain multiple functions
		/// 1. Spell check
		///		The idea of this method is that a string is inputtet and a string array returned.
		///		The inputted string should be checked for generic typing mistakes.
		///		Example, could be using levenshtein to check the input against common words
		///		and return the array orderd with closer words first, or above a certain threashold.
		///	2. Alternative Meanings
		///		Words can have multiple meanings, this method takes a string input, a single word, and returns an array of synonyms
		///		For example, bold => brave, strong, daring
		///		Other types of alternatives, e.g. the user typing in Bill Gates
		///		could also want references to Melinda Gates, or the Bill & Melinda Gates Foundation, climate change, ect.
		///		Corrolation between words.
	}
}

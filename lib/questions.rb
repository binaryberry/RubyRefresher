def select_elements_starting_with_a array
	array.select do |element| 
		element.start_with?('a') 
	end
end

def select_elements_starting_with_vowel array
	array.select do |element| 
	element.start_with?("a","e","i","o")
	end
end

def remove_nils_from_array array
	array.compact!
end

def remove_nils_and_false_from_array array
	array.delete_if {|element| !element}
end

def reverse_every_element_in_array array
	array.map {|element| element.reverse!}
end

def every_possible_pairing_of_students array
	array.combination(2).to_a
end

def all_elements_except_first_3 array
	array.slice(3, 4)
end

def add_element_to_beginning_of_array array, element
	array.unshift(element)
end

def array_sort_by_last_letter_of_word array
	array.sort_by { |word| word.inspect[-2]}
end

def get_first_half_of_string string
	string.length.odd? ? half = (string.length/2)+1 : half =(string.length/2) 
	return string[0...half]
end


def make_numbers_negative number
	number < 0 ? number : -number	
end

def separate_array_into_even_and_odd_numbers array
	[array.select(&:even?),array.select(&:odd?)]
end

def number_of_elements_that_are_palindromes array
	array.inject(0) do |memo, word|
		word == word.reverse ? memo +=1 : memo += 0 # When refactoring decided to create a separate check_palindrome method
	end
end


def shortest_word_in_array array
	array.sort {|a, b| a.length <=> b.length}.first
end

def longest_word_in_array array
	array.sort {|a, b| a.length <=> b.length}.last
end

def total_of_array array
	array.inject(:+)
end

def double_array array
 	array + array
end

def turn_symbol_into_string symbol
	symbol.to_s
end

def average_of_array array
	sum = array.inject(:+)
	average = sum / array.length
end

def get_elements_until_greater_than_five array
	array.take_while { |n| n <= 5 } # I looked at the answer for this one
end

def convert_array_to_a_hash array
	Hash[*array]
end

def get_all_letters_in_array_of_words array
    result = []
    array.each {|word| result << word.chars}
    result.flatten!.sort!
end

def swap_keys_and_values_in_a_hash hash
	hash.invert
end

def add_together_keys_and_values hash
	sum = 0
	hash.each { |key, value| sum += key + value}
	sum
end

def remove_capital_letters_from_string string
	letters = string.chars
	letters.delete_if {|letter| letter.capitalize == letter && letter != " "}
	letters.join
end
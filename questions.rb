def select_elements_starting_with_a array
	array.select do |element| 
		element.start_with?('a') 
	end
end

def select_elements_starting_with_vowel array
	array.select do |element| 
	element.start_with?("a") ||
	element.start_with?("e") ||
	element.start_with?("i") ||
	element.start_with?("o")
	end
end

def remove_nils_from_array array
	array.compact!
end

def remove_nils_and_false_from_array array
	array.delete_if {|element| element == nil || element == false}
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
	even = []
	odd = []
	result = [even, odd]
	array.each { |number| number.odd? ? odd << number : even << number}
	result
end

def number_of_elements_that_are_palindromes array
	result = 0
	array.each do |word|
		check_palindrome(word) ? result +=1 : nil # When refactoring decided to create a separate check_palindrome method
	end
	result
end

def check_palindrome string
	length = string.length
	matching_letters = 0
		for i in 1..length
			string.inspect[i] == string.inspect[-(i+1)] ? matching_letters +=1 : nil
		end
	matching_letters == length ? true : false
end

def shortest_word_in_array array
	array.sort {|a, b| a.length <=> b.length  }.first
end

def longest_word_in_array array
	i = 0
	longest_word = ""
	array.each do |word| 
		if word.length > i 
			i=word.length
			longest_word = word
		end
	end
	return longest_word
end


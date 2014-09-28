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
	array.delete_if {|element| element == nil}
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
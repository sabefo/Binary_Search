
def binary_search(data, array)
	if array.length == 0
		-1
	elsif !array.include?(data)
		-1
	else
		array.sort!
		binary_search_2(data, 0, 0, array)
	end
end

def binary_search_2(data, lower_index, upper_index, array)
	#VEMOS LA PARIDAD DEL LARGO DEL ARREGLO
	if array.length == 1
		return 0
	end
	if array.length % 2 == 0
		mitad = array.length / 2

		if data == array[mitad]

			return lower_index + mitad
		elsif data <= mitad

			binary_search_2(data, 0, mitad, array.slice(0,mitad))
		else

			binary_search_2(data, mitad, array.length, array.slice(mitad,mitad))			
		end
	else
		mitad = array.length / 2 + 1

		if data == array[mitad]

			return mitad
		elsif data <= mitad

			binary_search_2(data, 0, mitad, array.slice(0,mitad))
		else

			binary_search_2(data, mitad, array.length, array.slice(mitad,mitad))
		end
	end
end


#DRIVER CODE
p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == -1
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
 p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4
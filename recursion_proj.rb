def range (start, ending) #1, 7
    return [] if ending < start
    return [] if start == ending
   

    new_array = [start] << range(start +1, ending)
    # range(10, 14) # [10, 11, 12, 13]

    [10] << range(11, 14)
    [10, 11] << range(12, 14)
    [10, 11, 12] << range(13, 14)
    [10, 11, 12, 13, []] << range(14, 14)
    [10, 11, 12, 13, []]

    new_array.flatten

end

p range(10, 14)
p range(-1, 4)
p range(1, 3)
p range(9, 9)

puts "  "
puts 



def expo(b, n)
	#base cases
	return 1 if n == 0
	return 0 if b == 0
	return b if n == 1

	b * expo(b, n-1)
end

p expo(2, 4)
p expo(3, 3)


puts 

puts 

def expo_2(b, n) #(b, n-2)**2
	return 1 if n == 0
	return b if n == 1
	# return b if n == 2 || 2
	
	if n.even? 
        expo_2(b, n/2)**2 


    else
        b * (expo_2(b, (n-1)/2)**2)
	end
end

p expo_2(2, 4)
p expo_2(3, 3)
p expo_2(5, 4)

# (2, 4)
# def expo_2(b, n) #(b, n-2)**2

# 1st (2, 4) ex(2, 4/2)**2 ==
# 2nd (2, 2) ex(2, 2/2)**2 ==
# 3rd (2, 1) ex(2, 1/2)**2 ==
# 4th ex(2, )


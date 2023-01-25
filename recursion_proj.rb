def range (start, ending) #1, 7
    return [] if ending < start
    return [] if start == ending
   

    new_array = [start] << range(start +1, ending)
    # range(10, 14) # [10, 11, 12, 13]

    # [10] << range(11, 14)
    #[10, 11] << range(12, 14)
    #[10, 11, 12] << range(13, 14)
    #[10, 11, 12, 13, []] << range(14, 14)
    #[10, 11, 12, 13, []]

    new_array.flatten

end

p range(10, 14)
p range(-1, 4)
p range(1, 3)
p range(9, 9)
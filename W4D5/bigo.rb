array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
    array.inject do |accum, ele|
        if ele.length > accum.length
            ele
        else
            accum
        end
    end
end

def dominant_octopus(array)
    array.sort_by(&:length).last
end

def clever_octopus(array)
    biggest = ''

    (0...array.length).each do |i|
        biggest = array[i] if array[i].length > biggest.length
    end
    biggest

end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)

    tiles_array.each_index do |i|
        if tiles_array[i] == direction
            return i
        end
    end
    nil
end

new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
    }


def constant_dance(direction, new_tiles_data_structure)
    new_tiles_data_structure[direction]
end


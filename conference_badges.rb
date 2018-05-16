namesboi = ["Laura", "Bobby", "Frank"]

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(speakers_array)
  batch_array = []
  speakers_array.each do |name|
    batch_array.push "Hello, my name is #{name}."
  end
  return batch_array
end

def assign_rooms(speakers_array)
  room_array = (1..7).to_a
  room_assignments = []

  speakers_array.each do |name|
    room_assignments.push "Hello, #{name}! You'll be assigned to room #{room_array.shift}!"
  end
  return room_assignments
end

def printer(array)
  total_to_print = []
  total_to_print.concat batch_badge_creator(array)
  total_to_print.concat assign_rooms(array)

  total_to_print.each { |item| puts item}
end

trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# 1. Save the direction of train 111 into a variable
# Finding train as an index value- train 111 is indexed to number 7
puts train_111_direction = trains[7][:direction]

puts "---"*15
# 2.Save the frequency of train 80B into a variable.
train_808_frequency = trains[5][:frequency_in_minutes]
puts train_808_frequency = trains[5][:frequency_in_minutes]

puts "---"*15
# Save the direction of train 610 into a variable.
# Using the.find hash iteration
train_610_variable = trains.find {|hash| hash[:train] == "610"}
train_610_direction = train_610_variable[:direction]

puts train_610_direction = train_610_variable[:direction]

puts "---" * 15


# 4. Create an empty array. Iterate through each train and
# add the name of the train into the array if it travels north.
# 5. Do the same thing for trans that travel east

northbound_trains = []
eastbound_trains = []

def train_direction(starting_array, direction_array, direction)
  starting_array.each do |x_train|
    if x_train[:direction] == direction
      direction_array << x_train[:train]
    end
  end
end

train_direction(trains, northbound_trains, "north")
puts northbound_trains

puts "---" * 15

train_direction(trains, eastbound_trains, "east")
puts eastbound_trains

puts "---" * 15

# 7.

trains.each do |sample_train|
  if sample_train[:train] == "72C"
    sample_train[:first_departure_time] = 12
  end
end

puts trains

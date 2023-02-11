#1. #each
new_array = ["this", "is", "Ruby"].each {|str| puts str.upcase}
print "#{new_array}\n";

#2. #map/#collect
cubes = [1, 2, 3, 4].collect {|element| element ** 3}
print "#{cubes}\n";

#filter/#select/#find_all
words = ["give", "it", nil, "your", nil, "best", "shot"]
filtered_words = words.select do |word|
    word != nil
end

capitalized = filtered_words.collect do |word|
    word.capitalize
end
pp capitalized

#sort
users = [
    {name: "Nem", phone: "000-000-000"},
    {name: "Miguel", phone: "000-000-001"},
    {name: "Kygo", phone: "000-000-010"}
];
sorted_users = users.sort do |one, two|
    one[:name] <=> two[:name]
end 
pp sorted_users;
require 'pry';

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

# TODO: Write method called #reverse_each_word that takes in a argument of a sentence as a string, 
# and returns that same sentence with each word reversed in place.

def reverse_each_word (sentence)
    words = sentence.split(" ")
    reversed_words = [];

    words.each do |word|
        reversed_words << word.reverse
    end

    return reversed_words.join(" ");
end

puts reverse_each_word("Hello there, and how are you?");
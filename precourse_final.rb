#Loops and Iterators Exercises
z = "" 

while z != "STOP" do
	puts "How are you?"
	ans = gets.chomp
	puts "Keep going?"
	z = gets.chomp
end

x = [1,2,3,4,5]

x.each_with_index do |game,index|
	puts "#{index} : #{game}"
end

def countdown(num)
	puts num
	if num > 0
		countdown(num -1)
	end
end

#Arrays Exercises
arr= [1,3,5,7,9,11]
number = 3

arr.include?(number)

arr=[["test","hello","world"],["example", "mem"]]

arr.last[0]

arr = [3,6,8,9,1]
arr2 = []

arr.each do |z|
	arr2 << z + 2
end

p arr
p arr2

#Hashes exercises

family = {uncles:["Bob", "Joe", "Steve"], sisters:["Jane","jill","Beth"],
	brothers:["frank", "rob", "david"], aunts:["mary", "sally", "susan"]
}
klan=family.select do |a,b|
	a==:sisters || a==:brothers
end

puts klan.values.flatten

a = {:new=>"yes"}
b = {:old=>"no"}

puts a.merge!(b)
puts a
puts b

c = {:new=>"no"}
d = {:old=>"yes"}

puts c.merge(d)
puts c 
puts d

a = {one:"a", two:"b", three:"c"}

a.each do |a,b|
	puts "#{a}"
end

a.each do |a,b|
	puts "#{b}"
end

a.each do |a,b|
	puts "#{a}:#{b}"
end

person = {name:"Bob", occupation:"web developer",
hobbies: "painting"}

puts person[:name]

puts person.has_value?("Bob")

words = ["demo", "none","tied","evil","dome",
"mode","live", "fowl", "veil","wolf", "diet","vile",
"edit","tide","flow", "neon"]

result = {}

words.each do |word|
	key = word.split("").sort.join
	if result.has_key?(key)
		result[key].push(word)
	else
		result[key] = [word]
	end
end

result.each do |a,b|
	puts "-----"
	p b
end

#More Stuff Exercises

def test(string)
	if string =~ /lab/
		puts "Yes"
	else
		puts "No"
	end
end

test("Pans labyrinth")
test("laboratory")
test("experiment")
test("elaborate")
test("polar bear")

def execute(&block)
	block.call
end

execute {puts "Hello from inside the execute method!"}

#Exercises exercises

array = [1,2,3,4,5,6,7,8,9,10]

array.each do |a|
	puts a
end

array.each do |a|
	if a>5
		puts a
	end
end

puts new_array = array.select{|a| a%2 != 0}

puts array.push(11)

puts array.unshift(0)

array.pop
puts array.push(3)

puts array.uniq

puts hash_one = {name: "Hank"}
puts hash_two = {:name=>"Hank"}

h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
puts h

h.delete_if do |a,b|
	b<3.5
end

puts h

hash_values = {name:["bob", "joe", "hank"]}
puts hash_values

hash_array = [{a:"one", b:"two"}, {c:"three", d:"four"}]
puts hash_array

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email]=contact_data[0][0]
contacts["Joe Smith"][:address]=contact_data[0][1]
contacts["Joe Smith"][:phone]=contact_data[0][2]
contacts["Sally Johnson"][:email]=contact_data[1][0]
contacts["Sally Johnson"][:address]=contact_data[1][1]
contacts["Sally Johnson"][:phone]=contact_data[1][2]

puts contacts

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

array=["snow", "winter", "ice", "slippery", "salted roots", "white trees"]

array.delete_if do |a|
	a.start_with?("s")
end

puts array

a = ["white snow", "winter wonderland", "melting ice",
"slippery sidewalk", "salted roots", "white trees"]

alt_a = a.map{|a| a.split}

puts alt_a.flatten

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
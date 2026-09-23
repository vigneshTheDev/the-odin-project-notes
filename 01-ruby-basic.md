# Basic Ruby

## Basic Data types

integer
float
string
symbol
boolean
nil

### Integers & Floats

- Can do arithmetic operations: +, -, \*, /, \*\*, %
- integer division returns integer: 5/2 = 2
- Make one number as float to get more accurate answer: 5.0/2 = 2.5
- Everything is an object. Can call methods on numbers: 3.0.to_i
- Methods: to_i, to_f, to_s, even?, odd?

```ruby
3 + 3
# => 6

3 - 1
# => 2

3 * 2
# => 6

3 / 2
# => 1 :scratch head

# make one number float so that we get more accurate answer
3.0 / 2
# => 1.5

3 **2
# => 9
```

Everything is an object

```ruby
3.to_f # Yeah, right. Methods are called even without ()
# => 3.0

true.to_s
# => "true"

# Even nil :o
nil.to_s
# => ""
```

#### Number methods

```ruby
6.even?
# => true

7.odd?
# => true

13.to_f
# => 13.0

13.5.to_i
# => 13
```

### Strings

- Strings are mutable
- Double quoted strings support escape characters and interpolation
- Single quoted strings are sliiightly faster
- Methods: capitalize, upcase, downcase, concat, empty?, include?, length, reverse, split, strip, sub, gsub, insert, delete

```ruby
"Hello" + " " + "World"
"Hello" << " " << "World"
"Hello".concat(" ").concat("World")
```

Double quotes and single quotes behave differently :o

- String interpolation and escape characters work only in double quotes

```ruby
puts "Hello\nWorld"
# Hello
# World

puts 'Hello\nWorld'
# Hello\nWorld # Whaaat?
```

Substrings

```ruby
"Hello"[0] # => "H"
"Hello"[-1] # => "o"
"Hello"[0..2] # => "Hel"
"Hello"[0...2] # => "He"
"Hello"[0, 2] # => "He"
```

Escape Chars (Works only inside double quotes)

```ruby
\\ - \
\b - backspace
\r - carriage return
\n - new line
\s - space
\t - Tab
\" - "
\' - '

# \' and \\ works in single quotes
```

Interpolation

```ruby
name = "Chamy"
puts "Hello #{name}" # => "Hello Chamy"
puts 'Hello #{name}' # => "Hello #{name}" <- doesn't work with single quotes :|
```

But single quotes are sliiightly faster they say ¯\(ツ)/¯

#### Methods

```ruby
"hello".capitalize
# => "Hello"

"hello".upcase
# => "HELLO"

"HELLO".downcase
# => "hello"

# Yup, method names can have ?,= and !.
# ? usually means the function is a predicate - will return true or false
# ! means mutable operation. E.g. string.sub!("a", "A") will modify the string in place
"Hello".include?("o")
# => true

"".empty?
# => true

"Hello".length
# => 5

"hello".reverse
# => "olleh"

"Hello World".split
# => ["Hello", "World"]

"Hello World".split("")
# => ["H", "e", "l", "l",...] <- You know what

"   hello  ".strip
# => "hello"

"hello".sub('l', '7')
# => "he7lo"

"hello".gsub('l', '7')
# => "he77o"

"Hello ".insert(-1, "dude")
# => "Hello dude"

"hello".delete("l")
# => "heo"
```

> Strings are mutable :o

```ruby
a = "Hello"
b = a
a[0] = "h"

puts a
# => "hello"

puts b
# => "hello
```

### Symbols

A symbol is like a string. But immutable.
So, same symbol point to the same value in memory

```ruby
:symbol.equal?(:symbol)
# => true

"string".equal?("string)
# => false

:symbol.object_id == :symbol.object_id
# => true

"string".object_id == "string".object_id
# => false
```

### Boolean

```ruby
true
false
```

### Nil

Everything in Ruby has a return value. If there's nothing to return, nil is returned
And as everything in ruby is an object, nil is an object too

```ruby
nil.to_s
# => ""
```

NULL Pointer what?

---

## Variables

names that hold values

```ruby
age = 35
age += 1 # just got older
```

variables are references

```ruby
name = "Vignesh"
customer = name

name.sub!("Vignesh", "Chinnachamy")

puts name
# => Chinnachamy
puts customer
# => Chinnachamy <- Wut?
```

## Input and Output

```ruby
print "Hello" # prints without appending new line
puts "Hello" # prints with new line appended
```

```ruby
puts "How old are you?"
age = get
35
puts age
# => "35\n" <- New line appended

age = get.chomp
35
puts age
# => "35" <- New line chopped
```

## Conditionals

if, elsif, else # No 'e' in elsif
unless
case, when, then, else
ternary

### if

```ruby
if room_tidy == true
    "I can play video games"
end

notify "Something" if notification_enabled
```

### unless

```ruby
unless room_tidy == true
    "You cannot play video games"
end
```

### ifelse

```ruby
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the flying octopus "
end
```

### case inline

```ruby
grade = 'F'

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end

```

### case block

```ruby
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

```

### ternary

```ruby
response = age >= 18 ? "You can vote" : "No you can't"
```

### logical operators

```ruby
if age > 18 && is_citizen
    "You can vote"
else
    "No you can't"
```

```ruby
if age > 18 and is_citizen
    "You can vote"
else
    "No you can't"
```

> Note: &&, || behave different than and, or. So be careful

&& and || has higher precedence than assignment operator.
and, or has lower precedence than assignement operator.
So, and, or gets executed after the assignment. In some cases, it'll cause syntax errors

Use &&, || for assignments

```ruby
age = 18
is_citizen = false
can_vote = age > 18 and is_citizen
# => true <- We just allowed non citizens to vote

# This happens because, and has lower precedence than =
# Basically, we're doing (can_vote = age > 18) and is_citizen.
# The whole expression still evaluates to false. But can_vote gets assigned a true value

can_vote = age > 18 && is_citizen
# => false
```

```ruby
user_name = user && user.name # user_name == user.name

user_name = user and user.name # user_name == user Wait what?
```

Use &&, || for control flow

```ruby
line = gets || puts "You didn't enter anything"
^ Syntax error

|| gets higher precedence than the puts method call

Fix:
line = gets || puts("You didn't enter anything")

Or, have consistent method call style with

line = gets or puts "You didn't enter anything
```

```ruby
enable_notification && notify "Something"
^ Syntax error

&& gets higher precedence

Fix:
enable_notification && notify("Something")

Or, better
enable_notification and notify "Something"
```

## Loops

### `loop`

Yes, there's a loop called loop. And it won't stop looping. It's an infinite loop

```ruby
i = 0
loop do
    puts "i is #{i}"
    i += 1
    break if i == 10
end

output
------
Prints from 0 to 9
```

### `while`

```ruby
i = 0
while i < 10 do
    puts "i is #{i}"
    i += 1
end

# output
--------
Prints from 0 to 9
```

```ruby
while gets.chomp != "yes" do
    puts "Do you like pizza?"
end

# output
--------
what
Do you like pizza?
no
Do you like pizza?
I'm full
Do you like pizza?
I said I can't eat right now
Do you like pizza?
Go to hell
Do you like pizza?
Nooo
Do you like pizza?
Stop please
Do you like pizza?
yes
=> nil

```

### `until`

Ruby doesn't want you to negate. Ever.
This is the opposite of while loop

```ruby
until gets.chomp == "yes" do
    puts "Do you like pizza?"
end
```

### Ranges

```ruby
0...5 # => Exclusive range
0..5  # => Inclusive range
```

### `for`

```ruby
for i in 0..5 do
    puts "i is #{i}"
end

# output
--------
i is 0
i is 1
i is 2
i is 3
i is 4
i is 5
```

### times loop

```ruby
5.times do |i|
    puts "i is #{i}
end

# output
--------
i is 0
i is 1
i is 2
i is 3
i is 4
```

### upto and downto

```ruby
5.upto(10) do |i|
    puts "i is #{i}"
end

# output
--------
5 and 10 both inclusive
```

```ruby
10.downto(5) do |i|
    puts "i is #{i}"
end

# output
--------
Both 5 and 10 inclusive
```

## Arrays

- Arrays are ordered collections.
- Index starts at 0.
- arr[-1] gets the last element.
- push / < add to the end.
- unshift adds to the front.
- pop removes from the end.
- shift removes from the front.
- - concatenates arrays.
- removes matching elements.
- Methods: push, pop, shift, unshift, reverse, uniq, clear, shuffle, delete, include?, length, empty?, and join

```ruby
# Create
arr = []
arr = Array.new
 
# Access
arr[0]
arr[-1]
arr.first
arr.last
 
# Add
arr.push(x)
arr << x
arr.unshift(x)
 
# Remove
arr.pop
arr.pop(2)
arr.shift
 
# Combine
a + b
a.concat(b)
 
# Check
arr.empty?
arr.include?(x)
 
# Utilities
arr.length
arr.reverse
arr.join("-")
 
# Remove duplicates
arr.uniq
```

```ruby
arr.clear # Remove everything
arr.insert(1, "x")
arr.sample # Random element
arr.shuffle # Randomise order
arr.uniq # Remove duplicates
```

## Hash

- String indexed collection
- Symbol keys are more common
- Two syntaxes for string based vs symbol based { "name" => "Vignesh" } vs { :name => "Vignesh" } vs { name: "Vignesh" }
- Methods: keys, values, merge, delete, fetch

```ruby
person = {
    "name" => "Vigneshkumar"
}

person["name"] # => "Vigneshkumar"
person["email"] # => nil

person.fetch("email") # => throws
person.fetch("email", "default@gmail.com") # returns default
```

```ruby
person = {
  name: "Vigneshkumar"
}
person[:name] # => "Vigneshkumar"
```

## Methods

- Methods implicitely returns last evaluated value
- No need to put parantheses to call methods
- method names can have !, ? and = in the end

```ruby
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!
```

```ruby
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid
```

Default params

```ruby
def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
```

You can chain

```ruby
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"
```

Predicate methods conventionally have ? in the end

```ruby
even?
odd?
include?
```

## Debugging

- puts prints empty when printing [], "", nil
- use p to inspect
- for more sophisticated debuggine, use pry-byebug

```sh
gem install pry-byebug
```

```ruby
require 'pry-byebug'


def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry # Execution pauses here and we get some kind of repl

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")
```

## Enumerable methods

each
select
reject
each_with_index
map aka collect
reduce aka inject
any?
all?
none?
one?
include?

```ruby
friends = ['Jai', 'Resh', 'Sophy', 'Saran']
friends.each do |friend|
    puts "Hello #{friend}"
end
```

```ruby
friends = ['Jai', 'Resh', 'Sophy', 'Saran']
friends.select {|friend| friend != 'Jai'}
# => ['Resh', 'Sophy', 'Saran']

friends.reject {|friend| friend == 'Jai'}
# => ['Resh', 'Sophy', 'Saran']
```

```ruby
friends = ['Jai', 'Resh', 'Sophy', 'Saran']
greetings = friends.map {|friend| "Hello #{friend}"
```

```ruby
nums = [1,2,3,4,5]
sum = nums.reduce {|sum, num| num + sum}
```

## Nested collections
- Can index [][]
- Or with dig(0, 0)
- dig(0,0) returns nil if accessed out of range
- [0][0] throws if accessed out of range in the first level

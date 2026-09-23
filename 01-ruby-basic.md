# Basic Ruby

## Basic Data types

integer
float
string
symbol
boolean
nil

### Integers & Floats

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

Methods
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

---

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

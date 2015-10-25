##### ENUMERABLE

###all? [{ |obj| block } ] → true or false
%w[ant bear cat].all? { |word| word.length >= 3 } #=> true
%w[ant bear cat].all? { |word| word.length >= 4 } #=> false
[nil, true, 99].all?                              #=> false

###any? [{ |obj| block }] → true or false
%w[ant bear cat].any? { |word| word.length >= 3 } #=> true
%w[ant bear cat].any? { |word| word.length >= 4 } #=> true
[nil, true, 99].any?                              #=> true

###hunk { |elt| ... } → an_enumerator 
##dzielenie na czesci

[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n|
  n.even?
}.each { |even, ary|
  p [even, ary]
}
#=>   [false, [3, 1]]
#=>   [true, [4]]
#=>   [false, [1, 5, 9]]
#=>   [true, [2, 6]]
#=>   [false, [5, 3, 5]]

File.foreach("README").chunk { |line|
  /\A\s*\z/ !~ line || nil
}.each { |_, lines|
  pp lines
}

###count → int
##zliczanie
ary = [1, 2, 4, 2]
ary.count               #=> 4
ary.count(2)            #=> 2
ary.count{ |x| x%2==0 } #=> 3

###cycle(n=nil) → an_enumerator
##petla
a = ["a", "b", "c"]
a.cycle { |x| puts x }  # print, a, b, c, a, b, c,.. forever.
a.cycle(2) { |x| puts x }  # print, a, b, c, a, b, c.

###drop(n) → array
##usuwanie
a = [1, 2, 3, 4, 5, 0]
a.drop(3)             #=> [4, 5, 0]

###each_cons(n) → an_enumerator
##iteruje zadany blok i zwraca n-elementow
(1..10).each_cons(3) { |a| p a }
#=> outputs below
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]

###each_slice(n) → an_enumerator
##dzieli blok na n-elementowe tablice
(1..10).each_slice(3) { |a| p a }
# outputs below
[1, 2, 3]
[4, 5, 6]
[7, 8, 9]
[10]

###mapowanie
(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]


##### ENUMERABLE<br/><br/><br/>

###all? [{ |obj| block } ] → true or false<br/>
%w[ant bear cat].all? { |word| word.length >= 3 } #=> true<br/>
%w[ant bear cat].all? { |word| word.length >= 4 } #=> false<br/>
[nil, true, 99].all?                              #=> false<br/><br/>

###any? [{ |obj| block }] → true or false<br/>
%w[ant bear cat].any? { |word| word.length >= 3 } #=> true<br/>
%w[ant bear cat].any? { |word| word.length >= 4 } #=> true<br/>
[nil, true, 99].any?                              #=> true<br/><br/>

###hunk { |elt| ... } → an_enumerator <br/>
##dzielenie na czesci<br/>

[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n|<br/>
  n.even?<br/>
}.each { |even, ary|<br/>
  p [even, ary]<br/>
}<br/>
#=>   [false, [3, 1]]<br/>
#=>   [true, [4]]<br/>
#=>   [false, [1, 5, 9]]<br/>
#=>   [true, [2, 6]]<br/>
#=>   [false, [5, 3, 5]]<br/><br/>

File.foreach("README").chunk { |line|<br/>
  /\A\s*\z/ !~ line || nil<br/>
}.each { |_, lines|<br/>
  pp lines<br/>
}<br/><br/>

###count → int<br/>
##zliczanie<br/>
ary = [1, 2, 4, 2]<br/>
ary.count               #=> 4<br/>
ary.count(2)            #=> 2<br/>
ary.count{ |x| x%2==0 } #=> 3<br/><br/>

###cycle(n=nil) → an_enumerator<br/>
##petla<br/>
a = ["a", "b", "c"]<br/>
a.cycle { |x| puts x }  # print, a, b, c, a, b, c,.. forever.<br/>
a.cycle(2) { |x| puts x }  # print, a, b, c, a, b, c.<br/><br/>

###drop(n) → array<br/>
##usuwanie<br/>
a = [1, 2, 3, 4, 5, 0]<br/>
a.drop(3)             #=> [4, 5, 0]<br/><br/>

###each_cons(n) → an_enumerator<br/>
##iteruje zadany blok i zwraca n-elementow<br/>
(1..10).each_cons(3) { |a| p a }<br/>
#=> outputs below<br/>
[1, 2, 3]<br/>
[2, 3, 4]<br/>
[3, 4, 5]<br/>
[4, 5, 6]<br/>
[5, 6, 7]<br/>
[6, 7, 8]<br/>
[7, 8, 9]<br/>
[8, 9, 10]<br/><br/>

###each_slice(n) → an_enumerator<br/>
##dzieli blok na n-elementowe tablice<br/>
(1..10).each_slice(3) { |a| p a }<br/>
# outputs below<br/>
[1, 2, 3]<br/>
[4, 5, 6]<br/>
[7, 8, 9]<br/>
[10]<br/><br/>

###mapowanie<br/>
(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]<br/><br/>


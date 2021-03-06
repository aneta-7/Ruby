###Tutorial Array

#tworzenie nowej, pustej tablicy<br/>
```ruby
names = Array.new
```
#okreslenie wielkosci<br/>
```ruby
names = Array.new(20)
puts names.size  #=> 20
puts names.length #=> 20
```
#dodanie wartosci <br/>
```ruby
names = Array.new(4, "mac")
puts "#{names}" => results: macmacmacmac
```

#tablica tablic<br/>
```ruby
empty_table = Array.new(3) { Array.new(3) }
results [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
```

#wypelnienie od 0 do 9<br/>
```ruby
digits = Array(0..9) #=>results: 0123456789
```

#wypisanie n elementu<br/>
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
```

#przekroczenie zakresu i wypisanie komunikatu bledu<br/>
```ruby
arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(100) => IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") #=> "oops"
```
#pierwszy/ostatni emelent<br/>
```ruby
arr.first #=> 1
arr.last  #=> 6
#pierwsze dwa elementy
a.first(2)  
a.take(2)     
#ostatnie dwa elementy
a.last(2)
```


#czy tablica jest pusta <br/>
```ruby
array.empty?
czy zawiera "b"
a.include?("b") 
```
#pokazanie 5 elementow<br/>
```ruby
arr.push(5)
```
#dodanie elementu poczatkowego<br/>
```ruby
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
```

#wstawienie na 3 pozycji apple<br/>
```ruby
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
```
#usuniecie odatniego elementu<br/>
```ruby
arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr => [1, 2, 3, 4, 5]
```
#usuniecie pierwszego elementu<br/>
```ruby
arr.shift #=> 1
arr #=> [2, 3, 4, 5]
```
#usuniecie drugiego elementu<br/>
```ruby
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]
```
#usuniecie zadanego elementu<br/>
```ruby
arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]
```

#usuniecie wartosci nil<br/>
```ruby
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
```
#wartosci unikatowe<br/>
```ruby
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]
```
#od kazdego a odejmnij 10<br/>
```ruby
arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
 prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]
```

#wypisanie w odwrotnej kolejnosci<br/>
```ruby
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each { |word| str += "#{word} " }
p str #=> "sixth fifth fourth third second first "
```

#wyswietlenie elementow tablicy wg warunkow<br/>
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }     #=> [4, 5, 6]
arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
arr                          #=> [1, 2, 3, 4, 5, 6]
arr.delete_if { |a| a < 4 }  #=> [4, 5, 6]
arr.keep_if { |a| a < 4 }    #=> [1, 2, 3]
```

#zwraca element o zadanym indeksie, indeks ujemny liczy od tylu<br/>
```ruby
a.at(0)     #=> "a"
a.at(-1)    #=> "e"
```
#czyszczenie tablicy <br/>
```ruby
a.clear
```
#tablica kombinacji liczb<br/>
```ruby
a = [1, 2, 3, 4]
a.combination(1).to_a            #=> [[1],[2],[3],[4]]
a.combination(2).to_a            #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
a.combination(3).to_a            #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a            #=> [[1,2,3,4]]
a.repeated_combination(1).to_a   #=> [[1], [2], [3]]
a.repeated_combination(2).to_a   #=> [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]
a.repeated_permutation(1).to_a   #=> [[1], [2]]
a.repeated_permutation(2).to_a   #=> [[1,1],[1,2],[2,1],[2,2]]
```
#laczenie w ciag<br/>
```ruby
[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"
```
#kombinacja elementow wszystkich tablic<br/>
```ruby
[1,2,3].product([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
[1,2].product([1,2])       #=> [[1,1],[1,2],[2,1],[2,2]]
```
#przeszukuje tablice po elementach tablicy<br/>
```ruby
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
a.rassoc("two")    #=> [2, "two"]
```

#zwraca indeks ostatniego ze znalezionych elementow<br/>
```ruby
a = [ "a", "b", "b", "b", "c" ]
a.rindex("b")             #=> 3
```
#rotacja - zwraca nowa tablice<br/>
```ruby
a = [ "a", "b", "c", "d" ]<
a.rotate         #=> ["b", "c", "d", "a"]
```
#sortowanie<br/>
```ruby
a = [ "d", "a", "e", "c", "b" ]
a.sort          #=> ["a", "b", "c", "d", "e"]
```
#zwraca elementy w parze<br/>
```ruby
[[:foo, :bar], [1, 2]].to_h
#=> {:foo => :bar, 1 => 2}
```
#transponowanie<br/>
```ruby
a = [[1,2], [3,4], [5,6]]
a.transpose   [[1, 3, 5], [2, 4, 6]]
```
#wartosci unikatowe<br/>
```ruby
a = [ "a", "a", "b", "b", "c" ]
a.uniq    #=> ["a", "b", "c"]
```
#wartosci nie unikatowe
```ruby
a.uniq!    #=> ["a", "b", "c"]
```

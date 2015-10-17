###Tutorial Array

#tworzenie nowej, pustej tablicy<br/>
names = Array.new<br/><br/>

#okreslenie wielkosci<br/>
names = Array.new(20)<br/>
puts names.size  => 20<br/>
puts names.length => 20<br/><br/>

#dodanie wartosci <br/>
names = Array.new(4, "mac")<br/>
puts "#{names}" => results: macmacmacmac<br/><br/>

#tablica tablic<br/>
empty_table = Array.new(3) { Array.new(3) }<br/>
results [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]<br/><br/>

#wypelnienie od 0 do 9<br/>
digits = Array(0..9) =>results: 0123456789<br/><br/>

#wypisanie n elementu<br/>
arr = [1, 2, 3, 4, 5, 6]<br/>
arr[2]    #=> 3<br/>
arr[100]  #=> nil<br/>
arr[-3]   #=> 4<br/><br/>

#przekroczenie zakresu i wypisanie komunikatu bledu<br/>
arr = ['a', 'b', 'c', 'd', 'e', 'f']<br/>
arr.fetch(100) => IndexError: index 100 outside of array bounds: -6...6<br/>
arr.fetch(100, "oops") => "oops"<br/><br/>

#pierwszy/ostatni emelent<br/>
arr.first #=> 1<br/>
arr.last  #=> 6<br/>
#pierwsze dwa elementy<br/>
a.first(2)  <br/>
a.take(2)    <br/>    
#ostatnie dwa elementy<br/>
a.last(2)<br/><br/>


#czy tablica jest pusta <br/>
array.empty?<br/>
czy zawiera "b"<br/>
a.include?("b")  <br/><br/>

#pokazanie 5 elementow<br/>
arr.push(5)<br/><br/>

#dodanie elementu poczatkowego<br/>
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]<br/><br/>

#wstawienie na 3 pozycji apple<br/>
arr.insert(3, 'apple')  => [0, 1, 2, 'apple', 3, 4, 5, 6]<br/><br/>

#usuniecie odatniego elementu<br/>
arr =  [1, 2, 3, 4, 5, 6]<br/>
arr.pop => 6<br/>
arr => [1, 2, 3, 4, 5]<br/><br/>

#usuniecie pierwszego elementu<br/>
arr.shift => 1<br/>
arr => [2, 3, 4, 5]<br/><br/>

#usuniecie drugiego elementu<br/>
arr.delete_at(2) => 4<br/>
arr #=> [2, 3, 5]<br/><br/>

#usuniecie zadanego elementu<br/>
arr = [1, 2, 2, 3]<br/>
arr.delete(2) => 2<br/>
arr #=> [1,3]<br/><br/>

#usuniecie wartosci nil<br/>
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]<br/>
arr.compact  => ['foo', 0, 'bar', 7, 'baz']<br/><br/>

#wartosci unikatowe<br/>
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]<br/><br/>

#od kazdego a odejmnij 10<br/>
arr = [1, 2, 3, 4, 5]<br/>
arr.each { |a| print a -= 10, " " }<br/>
 prints: -9 -8 -7 -6 -5<br/>
=> [1, 2, 3, 4, 5]<br/><br/>

#wypisanie w odwrotnej kolejnosci<br/>
words = %w[first second third fourth fifth sixth]<br/>
str = ""<br/>
words.reverse_each { |word| str += "#{word} " }<br/>
p str => "sixth fifth fourth third second first "<br/><br/>

#wyswietlenie elementow tablicy wg warunkow<br/>
arr = [1, 2, 3, 4, 5, 6]<br/>
arr.select { |a| a > 3 }     => [4, 5, 6]<br/>
arr.reject { |a| a < 3 }     => [3, 4, 5, 6]<br/>
arr.drop_while { |a| a < 4 } => [4, 5, 6]<br/>
arr                          => [1, 2, 3, 4, 5, 6]<br/>
arr.delete_if { |a| a < 4 }  => [4, 5, 6]<br/>
arr.keep_if { |a| a < 4 }    => [1, 2, 3]<br/><br/>

#zwraca element o zadanym indeksie, indeks ujemny liczy od tylu<br/>
a.at(0)     #=> "a"<br/>
a.at(-1)    #=> "e"<br/><br/>

#czyszczenie tablicy <br/>
a.clear<br/><br/>

#tablica kombinacji liczb<br/>
a = [1, 2, 3, 4]<br/>
a.combination(1).to_a            => [[1],[2],[3],[4]]<br/>
a.combination(2).to_a            => [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]<br/>
a.combination(3).to_a            => [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]<br/>
a.combination(4).to_a            => [[1,2,3,4]]<br/>
a.repeated_combination(1).to_a   => [[1], [2], [3]]<br/>
a.repeated_combination(2).to_a   => [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]<br/>
a.repeated_permutation(1).to_a   => [[1], [2]]<br/>
a.repeated_permutation(2).to_a   => [[1,1],[1,2],[2,1],[2,2]]<br/><br/>


#laczenie w ciag<br/>
[ "a", "b", "c" ].join        #=> "abc"<br/>
[ "a", "b", "c" ].join("-")   #=> "a-b-c"<br/><br/>

#kombinacja elementow wszystkich tablic<br/>
[1,2,3].product([4,5])     => [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]<br/>
[1,2].product([1,2])       => [[1,1],[1,2],[2,1],[2,2]]<br/><br/>

#przeszukuje tablice po elementach tablicy<br/>
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]<br/>
a.rassoc("two")    #=> [2, "two"]<br/><br/>

#zwraca indeks ostatniego ze znalezionych elementow<br/>
a = [ "a", "b", "b", "b", "c" ]<br/>
a.rindex("b")             => 3<br/><br/>

#rotacja - zwraca nowa tablice<br/>
a = [ "a", "b", "c", "d" ]<br/>
a.rotate         => ["b", "c", "d", "a"]<br/><br/>

#sortowanie<br/>
a = [ "d", "a", "e", "c", "b" ]<br/>
a.sort          => ["a", "b", "c", "d", "e"]<br/><br/>

#zwraca elementy w parze<br/>
[[:foo, :bar], [1, 2]].to_h<br/>
=> {:foo => :bar, 1 => 2}<br/><br/>
 
#transponowanie<br/>
a = [[1,2], [3,4], [5,6]]<br/>
a.transpose   [[1, 3, 5], [2, 4, 6]]<br/><br/>

#wartosci unikatowe<br/>
a = [ "a", "a", "b", "b", "c" ]<br/><br/>
a.uniq    => ["a", "b", "c"]<br/><br/>

#wartosci nie unikatowe
a.uniq!    => ["a", "b", "c"]


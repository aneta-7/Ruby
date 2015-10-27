### HASH
Hash jest podobnym typem do Array, ale tam gdzie Array uzywa integera do indeksowania w Hashu możemy użyć dowolnego obiektu<br/>
```ruby
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }<br/><br/>

Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}<br/>
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}<br/>
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}<br/><br/><br/>
```


##### ustawiania wielkosci, typu czcionki<br/>
```ruby
options = { :font_size => 10, :font_family => "Arial" }<br/>
rownowznacznie:<br/>
options = { font_size: 10, font_family: "Arial" }<br/><br/>
```
##### hash można tworzyc przez slowo kluczone new<br/>
```ruby
grades = Hash.new<br/>
grades["Dorothy Doe"] = 9<br/><br/>
```
##### wartosc domyslna, gdy nie zadany obiekt nie istnieje<br/> 
```ruby
grades = Hash.new(0)<br/><br/>
```
##### prezenacja struktur danych<br/>
```ruby
books         = {}<br/>
books[:matz]  = "The Ruby Language"<br/>
books[:black] = "The Well-Grounded Rubyist"<br/><br/>
```
##### nazwa parametru w funkcji<br/>
```ruby
Person.create(name: "John Doe", age: 27)<br/><br/>

def self.create(params)<br/>
  @name = params[:name]<br/>
  @age  = params[:age]<br/>
end<br/><br/>
```
##### konwersja do hash<br/>
```ruby
Hash.try_convert({1=>2})   #=> {1=>2}<br/>
Hash.try_convert("1=>2")   #=> nil<br/><br/>
```
##### czyszczenie hash<br/>
```ruby
h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}<br/>
h.clear                          #=> {}<br/><br/>
```
##### petla each<br/>
```ruby
h = { "a" => 100, "b" => 200 }<br/>
h.each {|key, value| puts "#{key} is #{value}" }<br/><br/>
```
##### czy putse <br/>
```ruby
{}.empty?   #=> true<br/><br/>
```
##### featch - zwraca wartosc gdy znajdzie wartosc<br/>
```ruby
h = { "a" => 100, "b" => 200 }<br/>
h.fetch("a")                            #=> 100<br/>
h.fetch("z", "go fish")                 #=> "go fish"<br/>
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"<br/><br/>
```
##### sprawdzenie czy wystepuje klucz<br/>
```ruby
h = { "a" => 100, "b" => 200 }<br/>
h.has_key?("a")   #=> true<br/>
h.has_key?("z")   #=> false<br/><br/>
```ruby
##### sprawdzenie czy wystepuje wartosc<br/>
```ruby
h = { "a" => 100, "b" => 200 }<br/>
h.has_value?(100)   #=> true<br/>
h.has_value?(999)   #=> false<br/><br/>
```
##### zwraca jako string<br/>
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }<br/>
h.to_s   #=> "{\"c\"=>300, \"a\"=>100, \"d\"=>400}"<br/><br/>
```
##### zwraca nowy hash, wartosci jako klucze, klucze jako wartosci<br/>
```ruby
h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }<br/>
h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}<br/><br/>
```
##### dlugosc hash<br/>
```ruby
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }<br/>
h.length        #=> 4<br/><br/>
```
##### polaczenie dwoch hashy<br/>
```ruby
h1 = { "a" => 100, "b" => 200 }<br/>
h2 = { "b" => 254, "c" => 300 }<br/>
h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}<br/><br/>
```
##### SELECT<br/>
```ruby
h = { "a" => 100, "b" => 200, "c" => 300 }<br/>
h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}<br/>
h.select {|k,v| v < 200}  #=> {"a" => 100}<br/><br/>
```
##### usuwanie<br/>
```ruby
h = { 1 => "a", 2 => "b", 3 => "c" }<br/>
h.shift   #=> [1, "a"]<br/>
h         #=> {2=>"b", 3=>"c"}<br/><br/>
```
##### konwersja do array<br/>
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }<br/>
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]<br/><br/>
```


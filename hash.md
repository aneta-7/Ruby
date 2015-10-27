### HASH
Hash jest podobnym typem do Array, ale tam gdzie Array uzywa integera do indeksowania w Hashu możemy użyć dowolnego obiektu<br/>
```ruby
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>20
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
```


##### ustawiania wielkosci, typu czcionki<br/>
```ruby
options = { :font_size => 10, :font_family => "Arial" }
rownowznacznie:
options = { font_size: 10, font_family: "Arial" }
```
##### hash można tworzyc przez slowo kluczone new<br/>
```ruby
grades = Hash.new
grades["Dorothy Doe"] = 9
```
##### wartosc domyslna, gdy nie zadany obiekt nie istnieje<br/> 
```ruby
grades = Hash.new(0)
```
##### prezenacja struktur danych<br/>
```ruby
books         = {}
books[:matz]  = "The Ruby Language"
books[:black] = "The Well-Grounded Rubyist"
```
##### nazwa parametru w funkcji<br/>
```ruby
Person.create(name: "John Doe", age: 27)

def self.create(params)
  @name = params[:name]
  @age  = params[:age]
end
```
##### konwersja do hash<br/>
```ruby
Hash.try_convert({1=>2})   #=> {1=>2}
Hash.try_convert("1=>2")   #=> nil
```
##### czyszczenie hash<br/>
```ruby
h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
h.clear                          #=> {}
```
##### petla each<br/>
```ruby
h = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }
```
##### czy putse <br/>
```ruby
{}.empty?   #=> true
```
##### featch - zwraca wartosc gdy znajdzie wartosc<br/>
```ruby
h = { "a" => 100, "b" => 200 }
h.fetch("a")                            #=> 100
h.fetch("z", "go fish")                 #=> "go fish"
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
```
##### sprawdzenie czy wystepuje klucz<br/>
```ruby
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false
```ruby
##### sprawdzenie czy wystepuje wartosc<br/>
```ruby
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false
```
##### zwraca jako string<br/>
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_s   #=> "{\"c\"=>300, \"a\"=>100, \"d\"=>400}"
```
##### zwraca nowy hash, wartosci jako klucze, klucze jako wartosci<br/>
```ruby
h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}
```
##### dlugosc hash<br/>
```ruby
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length        #=> 4<br/><br/>
```
##### polaczenie dwoch hashy<br/>
```ruby
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
```
##### SELECT<br/>
```ruby
h = { "a" => 100, "b" => 200, "c" => 300 }
h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
h.select {|k,v| v < 200}  #=> {"a" => 100}
```
##### usuwanie<br/>
```ruby
h = { 1 => "a", 2 => "b", 3 => "c" }
h.shift   #=> [1, "a"]
h         #=> {2=>"b", 3=>"c"}
```
##### konwersja do array<br/>
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]
```


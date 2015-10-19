### HASH
Hash jest podobnym typem do Array, ale tam gdzie Array uzywa integera do indeksowania w Hashu możemy użyć dowolnego obiektu

grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

# ustawiania wielkosci, typu czcionki
options = { :font_size => 10, :font_family => "Arial" }
roznowznacznie:
options = { font_size: 10, font_family: "Arial" }

#hash można tworzyc przez slowo kluczone new
grades = Hash.new
grades["Dorothy Doe"] = 9

#wartosc domyslna, gdy nie zadany obiekt nie istnieje 
grades = Hash.new(0)

# prezenacja struktur danych
books         = {}
books[:matz]  = "The Ruby Language"
books[:black] = "The Well-Grounded Rubyist"

#nazwa parametru w funkcji
Person.create(name: "John Doe", age: 27)

def self.create(params)
  @name = params[:name]
  @age  = params[:age]
end

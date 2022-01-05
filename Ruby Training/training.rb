def hello(first_name)
puts " Hi "+ first_name.to_s
yield
yield
end
hello("Azzen"){ puts "yield twice"}
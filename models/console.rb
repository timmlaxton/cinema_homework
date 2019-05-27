require_relative('customer')
require_relative('films')
require_relative('tickets')

require ('pry')

# Customer.delete_all()
# Film.delete_all()
# Ticket.delete_all()

customer1 = Customer.new({'name' => 'John Wayne', 'funds' => 100})
customer1.save()
customer2 = Customer.new({'name' => 'Jane Fonda', 'funds' => 200})
customer2.save()
customer3 = Customer.new({'name' => 'Kevin Smith', 'funds' => 150})
customer.save()

film1 = Film.new({'title' => 'Rambo', 'price' => 15})
film1.save()
film2 = Film.new({'title' => 'Akira', 'price' => 12})
film2.save()
film3 = Film.new({'title' => 'Scrooged', 'price' => 10})
film3.new()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save()
ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket2.save()
ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film3.id})
ticket3.save()

binding.pry
nil

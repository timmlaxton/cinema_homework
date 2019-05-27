require_relative("../db/sql_runner")
require_relative('customer.rb')
require_relative('films.rb')


class Ticket
attr_reader :id
attr_accessor :customer_id, :film_id

def initialize (options)
  @id = options['id'] if options ['id']
  @customer_id = options['customer-id']
  @film_id = options["film_id"]
end

def save()
  sql = "INSERT INTO tickets
  (
    customer_id,
    film_id,
  )
  VALUES
  (
    $1, $2
  )
  RETURNING id"
  values = [@customer_id, @film_id]
  casting = SqlRunner.run(sql, values).first
  @id = casting['id'].to_i
end

def update()
  sql = "UPDATE tickets SET (customer_id, film_id) = ($1, $2) WHERE id = $3"
  values = [@customer_id, @film_id, @id]
  SqlRunner.run(sql, values)
end

def delete()
  sql = "DELETE * FROM tickets WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end



end

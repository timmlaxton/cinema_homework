require_relative("../db/sql_runner")
require_relative('films.rb')
require_relative('tickets.rb')

class Customer
attr_reader :id
attr_accessor :name, :funds

def initialize (options)
  @id = options['id'] if options ['id']
  @name = options['name']
  @funds = options['funds']
end

def save()
  sql = "INSERT INTO customer
  (
    name,
    funds,
  )
  VALUES
  (
    $1, $2
  )
  RETURNING id"
  values = [@name, @funds]
  casting = SqlRunner.run(sql, values).first
  @id = casting['id'].to_i
end

def update()
  sql = "UPDATE customer SET (name, funds) = ($1, $2) WHERE id = $3"
  values = [@name, @funds, @id]
  SqlRunner.run(sql, values)

def delete()
  sql = "DELETE * FROM customer WHERE id =$1"
  values = [@id]
  SqlRunner.run(sql, values)
end
end
end

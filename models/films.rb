require_relative("../db/sql_runner")
require_relative('customer.rb')
require_relative('tickets.rb')


class Film


attr_reader :id
attr_accessor :title, :price

def initialize (options)
  @id = options['id'] if options ['id']
  @title = options['title']
  @price = options['price']
end

def save()
  sql = "INSERT INTO films
  (
    title,
    price,
  )
  VALUES
  (
    $1, $2
  )
  RETURNING id"
  values = [@title, @price]
  casting = SqlRunner.run(sql, values).first
  @id = casting['id'].to_i
end


def update()
  sql = "UPDATE films SET (title, price) = ($1, $2) WHERE d = $3"
  values = [@title, @price, @id]
  SqlRunner.run(sql, values)
end


def delete()
  sql = "DELETE * from films WHERE id = $1"
  values =[@id]
  SqlRunner.run(sql, values)
end

end

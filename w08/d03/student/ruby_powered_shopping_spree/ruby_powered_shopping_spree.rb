require 'pry'
require 'pg'

#======================
# Starter Data
#======================
stores = ["Street Vendor", "The White House Gift Shop", "Nordstrom Rack", "The Cake Ambiance"]

quantities = [5, 10, 15, 2, 7]

prices = [4.99, 9.99, 50.00, 75.00, 100.00]

items = [
  "Gummy Cola Bottle",
  "Guava Candy",
  "Taco",
  "Bibimbop",
  "Burrito",
  "Channa Masala",
  "Lettuce Wrap",
  "PIZZA",
  "Cheese",
  "(Disney Soundtrack)",
  "Whiskey",
  "Athletic Socks",
  "Teach Like a Champion",
  "Practice Perfect"
]

pg_conn = PG.connect(dbname: 'shopping_db')

5.times do
  pg_conn.exec_params("INSERT INTO receipts (store, item, number_of_items, price) VALUES ($1, $2, $3, $4);", [stores.sample, items.sample, quantities.sample, prices.sample])
end

pg_conn.exec("UPDATE receipts SET item = 'Giants Jersey' WHERE id = 1;")
pg_conn.exec("UPDATE receipts SET price = 350 WHERE id = 1;")

8.times do
  random_id = rand(1..22)
  pg_conn.exec_params("UPDATE receipts SET price = 0, returned = true WHERE id = $1", [random_id])
end

pg_conn.close


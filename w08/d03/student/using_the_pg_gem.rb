require 'pry'
require 'pg'

# saves database connection to a variable so we can use it throughout our program
db_connection = PG.connect(dbname: 'shopping_db')

# Leave These Variables Commented Out, For Use in a Later Example #########
store    = ["Sears", "Disney Store", "JC Penney"].sample
item     = ["Leather Marp", "Cotton Darp", "Almond Croissant"].sample
quantity = rand(1..5)
price    = rand(4.00..6.00).round(2)
date     = 'Feb 4 2015'
###########################################################################

purchases = db_connection.exec("SELECT * FROM receipts;") # still has to be valid SQL!

sears_purchases = db_connection.exec("SELECT * FROM receipts WHERE store = 'Sears';")

sears_purchases.each do |sears_purchase|
  puts "Peter bought a #{sears_purchase['item']} from Sears for #{sears_purchase['price']}."
end

db_connection.exec("INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ('Target', 'Batman Shirt', 3, 20, 'Feb 2 2015');")

db_connection.exec("UPDATE receipts SET price = '0' WHERE item = 'The Last Tycoon';")

# db_connection.exec("ALTER TABLE receipts ADD returned BOOLEAN DEFAULT FALSE;")
db_connection.exec("UPDATE receipts SET returned = true WHERE item = 'The Last Tycoon';")

db_connection.exec("UPDATE receipts SET store = 'JC Penney' WHERE store = 'JC Penny';")
db_connection.exec("UPDATE receipts SET store = 'Toys \"R\" Us' WHERE store = 'Toys R Us';")

db_connection.exec("DELETE FROM receipts WHERE item = 'TMNT bedspread';")

sql_statement = "INSERT INTO receipts(store, item, number_of_items, price, buy_date) VALUES ($1, $2, $3, $4, $5);"
# use this when you are bringing in dynamic values
db_connection.exec_params(sql_statement, [store, item, quantity, price, date])

random_id = rand(1..5)
db_connection.exec_params("DELETE FROM receipts WHERE id = $1;", [random_id])

db_connection.close

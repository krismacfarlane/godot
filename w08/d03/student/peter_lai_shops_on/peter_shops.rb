require 'pry'
require 'pg'

# saves database connection to a variable so we can use it throughout our program
db_connection = PG.connect(dbname: 'shopping_db')

db_connection.exec("INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ('Target', 'Batman Shirt', 3, 20, 'Feb 2 2015');")

db_connection.exec("UPDATE receipts SET price = '0' WHERE item = 'The Last Tycoon';")

db_connection.exec("ALTER TABLE receipts ADD returned BOOLEAN DEFAULT FALSE;")
db_connection.exec("UPDATE receipts SET returned = true WHERE item = 'The Last Tycoon';")

db_connection.exec("UPDATE receipts SET store = 'JC Penney' WHERE store = 'JC Penny';")
db_connection.exec("UPDATE receipts SET store = 'Toys \"R\" Us' WHERE store = 'Toys R Us';")

db_connection.exec("DELETE FROM receipts WHERE item = 'TMNT bedspread';")

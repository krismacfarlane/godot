## Peter's Purchases

Today, you use your newfound knowledge of SQL knowledge to rifle through the 2014 purchase history of one Peter Y Lai, former WDI instructor and friend of all.

#### Directions

1. Enter the postgres console and create a database called `shopping_db`
1. Quit the postgres console, cd into your "shopping" directory, and inspect the expressions in `seeds.sql`. Google any terms or syntax you don't know.
1. Wondeful, now execute the following command in the terminal:
  - `psql -d shopping_db -f seeds.sql`
  - __NOTE:__ You will have to be within your your `shopping` directory.

1. Head back into the postgres console and connect to `shopping_db`. You should have a table called `receipts`. Take a look at the values therein.
1. Mine the receipts table for the following data, documenting the queries you used in the empty bullet points provided:
  - All the attributes from all the receipts
    -SELECT * FROM receipts;

  - The store and item names from all the receipts
    - SELECT store, item FROM receipts;

  - All the attributes from all purchases made at Toys R Us
    - SELECT * FROM receipts WHERE store = 'Toys R Us';

  - The item name of each purchase made at Strand.
    - SELECT item FROM receipts WHERE store = 'Strand';

  - The total number of items Peter purchased, displayed as "Total ItemsPurchased"
    - SELECT COUNT(*) AS total_items_purchased FROM receipts;

  - The total number of items purchased at Sears
    - SELECT COUNT(*) FROM receipts WHERE store = 'Sears';

  - All the attributes of receipts where Peter bought multiple items.
    -SELECT * FROM receipts WHERE number_of_items > 1;

  - The total amount of money spent at Sears. (Keep in mind, `price` is the price of a single item, not the total cost of, say, 2 or 3 shirts.)
    -SELECT SUM(number_of_items * price) FROM receipts WHERE store = 'Sears';

  - The average number of items purchased on a trip to JC Penny
    -SELECT AVG(number_of_items) FROM receipts WHERE store = 'JC Penny';

  - Great, now add a new receipt representing the purchase of a single "Heatstreet Maple Bourbon", purchased for $40.99 at "Schnapps Haus" on the most recent fourth of July.
    -INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ('Schnapps Haus', 'Heatstreet Maple Bourbon', 1, 40.99, 'July 4 2014');

#### Bonus

Look into the use of regular expressions in SQL queries.





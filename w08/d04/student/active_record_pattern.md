# Morning!

We began this week persisting data with Postgres, then moved to using the PG gem
to dynamically perform CRUD operations to our database. Now we're moving a step
up and putting a layer between our application logic and our database. That
layer is an ORM, an Object Relational Mapper. It translates the values in our
database into objects.

#### Questions

Read the following [article](http://en.wikipedia.org/wiki/Active_record_pattern) then pair up with a partner and be sure you're both able to answer the following questions:

- What is the Active Record pattern?
stores in-memory object data in relational databases
- What do tables map to?
class
- What do column names map to?
properties/attributes
- What do rows map to?
individual object/instances
- What is an ORM?
object-relational mapping- converting data between incompatible type systems in OOP
- How are foreign key relationships exposed?
as an instance of the appropriate type via a property

### Thought Experiment!

> After you've answered the above questions work with your partner and imagine
how the following SQL would translate into Ruby following an ActiveRecord pattern.

```sql
CREATE TABLE users (
    id serial PRIMARY KEY,
    login varchar NOT NULL,
    email varchar NOT NULL UNIQUE
);

CREATE TABLE bookmarks (
    id serial PRIMARY KEY,
    url text DEFAULT "",
    user_id integer REFERENCES users(id)
);
```

- What would the table map to in Ruby?
users
bookmarks
- What would a row map to?
an instance of a user
an instance of a bookmark
- How might you access values from the rows?
call instance methods?
- How might you access values from the foreign key relationships?


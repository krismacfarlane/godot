# Hello!

Pair up with a partner and read [Parts 1 through 4](http://guides.rubyonrails.org/active_record_basics.html
) on ActiveRecord Basics from The Rails Guides.

Be sure you're both able to answer the following questions:

- Define Convention over Configuration
The idea is that if you configure your applications in the very same way most of the time then this should be the default way. Thus, explicit configuration would be needed only in those cases where you can't follow the standard convention.

**These questions will be on the assessment tomorrow**

- What naming conventions does ActiveRecord follow?
pluralize class names to find the respective database table (class Book, has db books), class names >= 2 words should be CamelCase, table names >= 2 words should have underscores
classes: singluar, CamelCase
databases/tables: pluralize, snake_cased

- What optional columns will ActiveRecord use if they're on a table?
created_at, updated_at, lock_version, type, association_name_type, table_name_count

- How do you create an ActiveRecord model?
simply have your class inherit from ActiveRecord::Base

Given the following sql

```sql
CREATE TABLE space_craft (
    id serial PRIMARY KEY,
    type varchar,
    capacity varchar
    piloted_by integer REFERENCES person(id)
);

CREATE TABLE person (
    id serial PRIMARY KEY,
    born_on date
);
```

1. How would you update the schema to allow ActiveRecord to automatically record when a row is updated or created?

class SpaceCraft < ActiveRecord::Base
end

craft = SpaceCraft.new
craft.type = "craft type"
craft.capacity = "4"
craft.piloted_by = person_id

1. How could you rename the tables and rows to better follow ActiveRecords naming conventions?

class SpaceCraft < ActiveRecord::Base
  self.table_name = "space_crafts"
end

class Person < ActiveRecord::Base
  self.table_name = "people"
end

1. How would you create two ActiveRecord models based on the tables?

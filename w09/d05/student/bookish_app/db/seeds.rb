Author.destroy_all
Book.destroy_all
Character.destroy_all

dave_eggers = Author.create(name: "Dave Eggers", born_on: "Mar 12, 1970", gender: "male", has_pseudonym: false)
robert_galbraith = Author.create(name: "Robert Gailbraith", born_on: "Jul 31, 1965", gender: "female", has_pseudonym: true)

the_circle = Book.create(title: "The Circle", released_on: "Oct 1, 2013", genre: "Science Fiction", author: dave_eggers)
cuckoos = Book.create(title: "The Cuckoo's Calling", released_on: "Apr 4, 2013", genre: "Crime Fiction", author: robert_galbraith)

mae_holland = Character.create(name: "Mae Holland", gender: "female", quirk: "So annoying and gullible", book: the_circle)
cormoran = Character.create(name: "Cormoran Strike", gender: "male", quirk: "private detective!", book: cuckoos)

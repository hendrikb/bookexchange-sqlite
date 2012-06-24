# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
User.delete_all

books = [
    { title: "Die unendliche Geschichte", author: "Michael Ende", isbn: "2365897852", condition: -2, price: 15.99 },
    { title: "Farblehre", author: "Johann Wolfgang von Goethe", isbn: "3365497221", condition: 2, price: 1.99 },
    { title: "Introduction to regular expressions", author: "J. Freydl", isbn: "1564892014", condition: 3, price: 5.00 },
    { title: "The Bible", author: "Many", isbn: "1000000000", condition: -3, price: 0.01 },
    { title: "The Da Vinci Code", author: "Dan Brown", isbn: "5647852123", condition: 1, price: 2.30 },
    { title: "A regular Man", author: "John Doe", isbn: "3728192722", condition: 3, price: 25 },
    { title: "The patient", author: "John Katzenbach", isbn: "2456789987", condition: 0, price: 10.01 }
   ]

hagen = User.create(user_name: "hagen", password: "test123", email: "hagen@hagen.xox", age: 23, description: "A test user")

hendrik = User.create(user_name: "hendrik", password: "hendrik", email: "hbergunde@gmx.de", age: 27, description: "The author of this piece of software")

tina = User.create(user_name: "tina", password: "123blar", email: "tinchen@blaaar.xox", age: 22, description: "no one actually knows me.")
hagen.books.create(books[6])
tina.books.create(books[3])
hendrik.books.create(books[5])
hagen.books.create(books[4])
tina.books.create(books[0])
hagen.books.create(books[1])
hendrik.books.create(books[2])

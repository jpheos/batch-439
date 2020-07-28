# 1. What's a relational database?

Un set de tables, qui ont des relations entre elles.



# 2. What are the different table relationships you know?

1-1
1-N
N-N


# 3. Consider this e-library service. An author, defined by his
#     name have several books. A book, defined by its title and
#     publishing year, has one author only. What’s this simple
#     database scheme. Please draw it!






# 4. A user, defined by his email, can read several books. A
#    book (e-book!!) can be read by several user. We also want
#    to keep track of reading dates. Improve your e-library DB
#     scheme with relevant tables and relationships.




# 5. What's the language we use to make queries to the database?

SQL

Structured Query Language




# 6. GO TO SQL FILE




# 7. GO TO SQL FILE




# 8. What's the purpose of ActiveRecord?

C est un framewotk Ruby qui permet de génerer des requêtes SQL.
C est un ORM => https://fr.wikipedia.org/wiki/Mapping_objet-relationnel


# 9. What's a migration? How do you run a migration?

C est un script ruby qui va permettre de manipuler la structure complète de la BDD. (en entier 😛)

> rake db:migrate

# 10. Complete the migrations

class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publishing_year
      t.references :author, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps
    end
  end
end

class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end


# 11. Write migration to add category to books

class AddCategoryToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :category, :string
  end
end

# 12. Define the models for each table in your database

class Author < ActiveRecord::Base
  has_many :books
end

class Book < ActiveRecord::Base
  belongs_to :author
  has_many :readings
end

class Reading < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :readings
  has_many :books, through: :readings # optional
end

# 13. Complete following code using relevant ActiveRecord methods

#   1. Add your favourite author to the db

  Author.create!(name: 'toto')

#   2. Get all authors

  Author.all


#   3. Get author with the id=8

  Author.find(8)


#   4. Get author with name="Jules Verne", store in a variable: jules

  jules = Author.find_by(name: 'Jules Verne')

#   5. Get Lujes Verne's books

  jules.books


#   6. Create a new book "20000 Leagues under the sea", it's missing
#      in the DB. Store it in a variable: twenty_thousand

  twenty_thousand = Book.new(title: "20000 Leagues under the sea")

#   7. Add Jules Verne as this book's author

  twenty_thousand.author = jules

#   8. Now save this book in the DB.

  twenty_thousand.save!

# 14. Add validations of your choice to the Author class. Can we save
#     an object in the DB if the validations do not pass?

class Author < ActiveRecord::Base

  validates :name, length: { minimum: 3 }, presence: true

end

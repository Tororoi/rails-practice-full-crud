class Author < ApplicationRecord
    has_many :author_books, dependent: :destroy
    has_many :books, through: :author_books

    validates :name, presence: true
    validates :birth_year, length: {is: 4}, numericality: {only_integer: true, less_than: 2021}
end

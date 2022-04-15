class MenuItem < ApplicationRecord
  has_many :menu

  validates :name, uniqueness: {message: "MenuItem with name '%{value}' already exists."}
end

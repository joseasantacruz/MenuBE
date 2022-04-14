class MenuItem < ApplicationRecord
  has_many :menu

  validates :name, uniqueness: {message: "MenuItem's name already exists."}
end

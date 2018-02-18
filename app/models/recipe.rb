class Recipe
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  has_many :ingredient_list_items
  accepts_nested_attributes_for :ingredient_list_items
end

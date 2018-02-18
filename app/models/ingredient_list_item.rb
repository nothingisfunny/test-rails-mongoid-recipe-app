class IngredientListItem
  include Mongoid::Document
  belongs_to :recipe
  field :quantity, type: Integer
  field :unit, type: String
  field :name, type: String
end

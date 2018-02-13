class IngredientListItem
  include Mongoid::Document
  belongs_to :recipe
  belongs_to :ingredient
  field :quantity, type: Integer
  field :unit, type: String
end

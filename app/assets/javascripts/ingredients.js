function createField(labelName, inputName, element){
  var label = document.createElement("span")
  label.innerHTML = ` ${labelName} `
  var input = document.createElement("input");
  input.setAttribute("type", "text");
  let ingredientNumber = $("#ingredientList").children.length -1
  input.setAttribute("name", `recipe[ingredient_list_items_attributes][${ingredientNumber}]`+inputName)

  element.appendChild(label)
  element.appendChild(input)
}

function addIngredientField(){
  var li = document.createElement("li")
  createField("Name", "name", li)
  createField("Quantity", "quantity", li)
  createField("Unit", "unit", li)

  document.getElementById("ingredientList").appendChild(li)
}
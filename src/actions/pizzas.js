const db = require('../models/db')

const allPizzas = () => {
  const sql = 'SELECT * FROM pizza'
  return db.any(sql)
}

const getPizza = (id) => {
  const sql = 'SELECT * FROM pizza WHERE id = $1'
  return db.one(sql, id)
}

const getPizzaToppings = (id) => {
  const sql = 'SELECT * FROM ingredient JOIN pizza_ingredients ON ingredient.id=ingredient_id WHERE pizza_id = $1'
  return db.any(sql, id)
}

const getPizzaCost = (id) => {
  const sql = `SELECT SUM(base_cost +
              (SELECT COUNT(*) FROM pizza_ingredients WHERE pizza_id = $1) * cost_per_topping)
              FROM size_option JOIN pizza on pizza.size=size_option.size WHERE pizza.id = $1`
  return db.one(sql, id)
}



module.exports = { allPizzas, getPizza, getPizzaToppings, getPizzaCost }

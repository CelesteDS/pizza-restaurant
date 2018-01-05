const db = require('../models/db')

const getAllCustomers = () => {
  return db.any('SELECT * FROM customer')
}

const getCustomer = (id) => {
  return db.one('SELECT * FROM customer WHERE id = $1', [id])
}

const getCustomerPreferences = (id) => {
  const sql = `SELECT size, crust, ingredient.name FROM pizza
    JOIN customer_pizza_preferences ON pizza.id=customer_pizza_preferences.pizza_id
    LEFT OUTER JOIN pizza_ingredients ON pizza_ingredients.pizza_id=pizza.id
    LEFT OUTER JOIN ingredient ON pizza_ingredients.ingredient_id=ingredient.id
    WHERE customer_pizza_preferences.customer_id = $1`
    return db.any(sql, id)
}

const getCustomerOrders = (id) => {
  const sql = `SELECT * FROM purchase LEFT OUTER JOIN purchase_pizzas ON purchase_id=purchase.id
    LEFT OUTER JOIN purchase_drinks ON purchase_drinks.purchase_id=purchase.id WHERE purchase.customer_id = $1`
    return db.any(sql, id)
}

module.exports = { getAllCustomers, getCustomer, getCustomerPreferences, getCustomerOrders }

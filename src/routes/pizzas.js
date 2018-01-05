const express = require('express')
const routes = express.Router()

const { allPizzas, getPizza, getPizzaToppings, getPizzaCost } = require('../actions/pizzas')

routes.get('/pizzas', (req, res) => {
  return allPizzas()
    .then((pizzas) => {
      res.send(pizzas)
    })
    .catch(console.error)
})

routes.get('/pizzas/:id', (req, res) => {
  return getPizza(req.params.id)
    .then((pizzaDetails) => {
      res.send(pizzaDetails)
    })
    .catch(console.error)
})

routes.get('/pizzas/:id/toppings', (req, res) => {
  return getPizzaToppings(req.params.id)
    .then((toppings) => {
      res.send(toppings)
    })
    .catch(console.error)
})

routes.get('/pizzas/:id/cost', (req, res) => {
  return getPizzaCost(req.params.id)
    .then((cost) => {
      res.send(cost)
    })
    .catch(console.error)
})

module.exports = routes

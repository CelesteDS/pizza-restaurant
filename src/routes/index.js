const express = require('express')

const customers = require('./customers')
const drinks = require('./drinks')
const pizzas = require('./pizzas')

const routes = express.Router()

routes.get('/', (req, res) => {
  res.send('Welcome to Pizza Planet')
})
routes.use(customers)
routes.use(drinks)
routes.use(pizzas)

module.exports = routes

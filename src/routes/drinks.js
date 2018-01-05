const express = require('express')
const routes = express.Router()

const { getAllDrinks, getDrink, getDrinksBySupplier } = require('../actions/drinks')

routes.get('/drinks', (req, res) => {
  return getAllDrinks()
    .then((drinks) => {
      res.send(drinks)
    })
    .catch(console.error)
})

routes.get('/drinks/:id', (req, res) => {
  return getDrink(req.params.id)
    .then((drinkDetails) => {
      res.send(drinkDetails)
    })
    .catch(console.error)
})

routes.get('/drinks/supplier/:supplierName', (req, res) => {
  return getDrinksBySupplier(req.params.supplierName)
    .then((supplierDrinks) => {
      res.send(supplierDrinks)
    })
    .catch(console.error)
})

module.exports = routes

const express = require('express')
const routes = express.Router()
const { getAllCustomers, getCustomer, getCustomerPreferences, getCustomerOrders } = require('../actions/customers')

routes.get('/allCustomers', (req, res) => {
  return getAllCustomers()
    .then((customerList) => {
      res.send(customerList)
    })
    .catch(console.log)
})

routes.get('/customer/:id', (req, res) => {
  return getCustomer(req.params.id)
    .then((customerDetails) => {
      res.send(customerDetails)
    })
    .catch(console.log)
})

routes.get('/customer/:id/preferences', (req, res) => {
  return getCustomerPreferences(req.params.id)
    .then((prefs) => {
      res.send(prefs)
    })
    .catch(console.log)
})

routes.get('/customer/:id/orders', (req, res) => {
  return getCustomerOrders(req.params.id)
    .then((orders) => {
      res.send(orders)
    })
    .catch(console.error)
})


module.exports = routes

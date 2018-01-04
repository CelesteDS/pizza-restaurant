const express = require('express')

const routes = express.Router()

routes.get('/getit', (req, res) => {
  res.send('gotten')
})
routes.get('/', (req, res) => {
  res.send('getting')
})


module.exports = routes

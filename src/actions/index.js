// this file is for the layer of abstraction for db queries
// need to import functions from each actions file and export them each
const { getCustomer, getAllCustomers } = require('./customers')
module.exports = { getCustomer, getAllCustomers }

const db = require('../models/db')

const getAllDrinks = () => {
  const sql = 'SELECT * FROM drink'
  return db.any(sql)
}

const getDrink = (id) => {
  const sql = 'SELECT * FROM drink WHERE id = $1'
  return db.one(sql, id)
}

const getDrinksBySupplier = (supplier_name) => {
  const sql = 'SELECT * FROM drink WHERE supplier = $1'
  return db.any(sql, supplier_name)
}

module.exports = { getAllDrinks, getDrink, getDrinksBySupplier }

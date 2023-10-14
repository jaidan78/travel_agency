const Sequelize = require('sequelize')
require('dotenv').config({ path: 'variables.env' })

const { DB_NOMBRE, DB_USER, DB_PASS, DB_HOST, DB_PORT }= process.env

const db = new Sequelize(DB_NOMBRE, DB_USER, DB_PASS,{
    host: DB_HOST,
    port: DB_PORT,
    dialect:"postgres",
    define: {
        timestamps: false,
    },
    pool: {
        max : 5 ,
        min : 0,
        acquire: 30000,
        idle: 10000
    },
    operatorAliases: false
})

module.exports = db
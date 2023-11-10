// db.js
const { MongoClient } = require("mongodb");

const url = "mongodb://localhost:27017";
const dbName = "warehouse-management";

const client = new MongoClient(url, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

async function connectToDatabase() {
  await client.connect();
  console.log("Connected to the database");
}

function closeDatabaseConnection() {
  client.close();
  console.log("Connection to the database closed");
}

module.exports = { client, connectToDatabase, closeDatabaseConnection, dbName };

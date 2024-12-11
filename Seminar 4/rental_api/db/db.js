import postgres from 'postgres'

const sql = postgres({ host: "localhost", port: 5432, database: "harry", username: "harry", password: "" });

export default sql



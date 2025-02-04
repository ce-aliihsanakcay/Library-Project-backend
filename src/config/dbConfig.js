import 'dotenv/config';

const { DB_DIALECT, DB_STORAGE } = process.env;

const dbConfig = {
  dev: {
    username: "root",
    password: "password",
    database: DB_STORAGE,
    host: DB_STORAGE,
    dialect: DB_DIALECT
  },
}

export { dbConfig };

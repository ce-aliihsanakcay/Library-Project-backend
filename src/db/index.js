import { Sequelize } from "sequelize";
import { dbConfig } from "../config/dbConfig.js";

import 'dotenv/config'
const { STAGE } = process.env;

const sequelize = new Sequelize(dbConfig[`${STAGE}`]);

export { sequelize };

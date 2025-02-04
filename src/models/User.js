import { DataTypes, Model } from "sequelize";
import { sequelize } from "../db/index.js";

class User extends Model { }

User.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    phone: {
      type: DataTypes.STRING,
    },
    address: {
      type: DataTypes.STRING,
    },
    gender: {
      type: DataTypes.STRING,
    },
    created_at: {
      type: DataTypes.DATE,
    },
    updated_at: {
      type: DataTypes.DATE,
    },
  },
  {
    // Other model options go here
    timestamps: true,
    createdAt: "created_at",
    updatedAt: "updated_at",
    sequelize, // We need to pass the connection instance
    modelName: 'User', // We need to choose the model name
  },
);

export { User };

import { DataTypes, Model } from "sequelize";
import { sequelize } from "../db/index.js";

class Book extends Model { }

Book.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    author: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    category: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    score: {
      type: DataTypes.DECIMAL(4, 2),
      allowNull: false,
      defaultValue: -1,
      validate: {
        min: -1,
        max: 10.00
      }
    },
    published_at: {
      type: DataTypes.INTEGER,
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
    modelName: 'Book', // We need to choose the model name
  },
);

export { Book };

import { DataTypes, Model } from "sequelize";
import { sequelize } from "../db/index.js";
import { Book } from "./Book.js";
import { User } from "./User.js";

class BorrowedBook extends Model { }

BorrowedBook.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    user_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    book_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    borrowed_at: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW
    },
    returned_at: {
      type: DataTypes.DATE
    },
    user_score: {
      type: DataTypes.INTEGER,
      validate: {
        min: 1,
        max: 10
      }
    },
    is_returned: {
      type: DataTypes.BOOLEAN,
      defaultValue: false
    }
  },
  {
    sequelize,
    tableName: 'borrowed_books',
    modelName: 'BorrowedBook',
    timestamps: false,
  }
);

User.belongsToMany(Book, { through: BorrowedBook, foreignKey: 'user_id' });
Book.belongsToMany(User, { through: BorrowedBook, foreignKey: 'book_id' });

User.hasMany(BorrowedBook, { foreignKey: 'user_id' });
BorrowedBook.belongsTo(User, { foreignKey: 'user_id' });

Book.hasMany(BorrowedBook, { foreignKey: 'book_id' });
BorrowedBook.belongsTo(Book, { foreignKey: 'book_id' });

export { BorrowedBook };

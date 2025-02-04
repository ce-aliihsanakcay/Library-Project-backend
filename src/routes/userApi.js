import { Router } from "express";
import { User } from "../models/User.js";
import { Book } from "../models/Book.js";
import { BorrowedBook } from "../models/BorrowedBook.js";

const userRouter = Router();

userRouter.post('/', async (req, res, next) => {
  try {
    await User.create(req.body);
    res.send({ success: true, message: 'User is created' });
  } catch (error) {
    next(error);
  }
});

userRouter.get('/', async (req, res, next) => {
  try {
    const users = await User.findAll();
    res.send(users);
  } catch (error) {
    next(error);
  }
});

userRouter.get('/:id', async (req, res, next) => {
  try {
    const userId = req.params.id;
    let user = await User.findOne({
      where: { id: userId },
      include: {
        model: BorrowedBook
      }
    });
    if (!user) notFoundError("User");
    user = fixUserObject(user);
    res.send(user);
  } catch (error) {
    next(error);
  }
});

userRouter.put('/:id', async (req, res, next) => {
  try {
    const userId = req.params.id;
    const user = await User.findOne({ where: { id: userId } });
    if (!user) notFoundError("User");
    const { name, email, phone, address, gender } = req.body;
    if (name) user.name = name;
    if (email) user.email = email;
    if (phone) user.phone = phone;
    if (address) user.address = address;
    if (gender) user.gender = gender;
    await user.save();
    res.send({ success: true, message: 'User Updated' });
  } catch (error) {
    next(error);
  }
});

userRouter.delete('/:id', async (req, res, next) => {
  try {
    const userId = req.params.id;
    await User.destroy({ where: { id: userId } })
    res.send({ success: true, message: "User is deleted" });
  } catch (error) {
    next(error);
  }
});

userRouter.post('/:userId/borrow/:bookId', async (req, res, next) => {
  try {
    const userId = req.params.userId;
    const bookId = req.params.bookId;
    const user = await User.findOne({ where: { id: userId } });
    if (!user) notFoundError("User");

    const book = await Book.findOne({ where: { id: bookId } });
    if (!book) notFoundError("Book");

    const borrowedBook = await BorrowedBook.findOne({
      where: { book_id: bookId, is_returned: false }
    });
    if (!borrowedBook) notFoundError("Book");

    const body = {
      user_id: userId,
      book_id: bookId,
      borrowed_at: req.timestamp
    }
    await BorrowedBook.create(body)
    res.send({ success: true, message: 'User borrowed a book succesfully' })
  } catch (error) {
    next(error);
  }
});

userRouter.post('/:userId/return/:bookId', async (req, res, next) => {
  try {
    const userId = req.params.userId;
    const bookId = req.params.bookId;
    const borrowedBook = await BorrowedBook.findOne({
      where: { user_id: userId, book_id: bookId, is_returned: false }
    });
    if (!borrowedBook) notFoundError("Book");;

    borrowedBook.returned_at = req.timestamp;
    borrowedBook.is_returned = true;
    if (req.body?.score) borrowedBook.score = req.body.score;
    await borrowedBook.save();
    res.send({ success: true, message: 'User returning a book with his score' });
  } catch (error) {
    next(error);
  }
});

const fixUserObject = (user) => {
  let { dataValues: tempUser } = user;
  tempUser = {
    ...tempUser,
    books: {
      past: tempUser.BorrowedBooks.filter(book => book.is_returned),
      present: tempUser.BorrowedBooks.filter(book => !book.is_returned)
    }
  };
  delete tempUser.BorrowedBooks;
  return tempUser;
}

const notFoundError = (item) => {
  const err = new Error(`${item} is not found!`);
  err.statusCode = 400;
  throw err;
}

export { userRouter };

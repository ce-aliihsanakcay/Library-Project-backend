import { Router } from "express";
import { Book } from "../models/Book.js";

const bookRouter = Router();

bookRouter.post('/', async (req, res, next) => {
  try {
    await Book.create(req.body);
    res.send({ success: true, message: 'Book created' });
  } catch (error) {
    next(error);
  }
});

bookRouter.get('/', async (req, res, next) => {
  try {
    const books = await Book.findAll();
    if (!books) bookNotFoundError();
    res.send(books);
  } catch (error) {
    next(error);
  }
});

bookRouter.get('/:id', async (req, res, next) => {
  try {
    const bookId = req.params.id;
    const book = await Book.findOne({ where: { id: bookId } });
    if (!book) bookNotFoundError();
    res.send(book);
  } catch (error) {
    next(error);
  }
});

bookRouter.put('/:id', async (req, res, next) => {
  try {
    const bookId = req.params.id;
    const book = await Book.findOne({ where: { id: bookId } })
    if (!book) bookNotFoundError();

    const { title, author, category, score, published_at } = req.body;
    if (title) book.title = title;
    if (author) book.author = author;
    if (category) book.category = category;
    if (score) book.score = score;
    if (published_at) book.published_at = published_at;
    await book.save();
    res.send({ success: true, message: 'Book is Updated' });
  } catch (error) {
    next(error);
  }
});

bookRouter.delete('/:id', async (req, res, next) => {
  try {
    const bookId = req.params.id;
    await Book.destroy({ where: { id: bookId } })
    res.send({ success: true, message: "Book is deleted" });
  } catch (error) {
    next(error);
  }
});

const bookNotFoundError = () => {
  const err = new Error("Book is not found!");
  err.statusCode = 400;
  throw err;
}

export { bookRouter };

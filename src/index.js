import { app } from "./app.js";
import 'dotenv/config';
import { sequelize } from "./db/index.js";
import { userRouter } from "./routes/userApi.js";
import { bookRouter } from "./routes/bookApi.js";

const { PORT } = process.env;

sequelize.sync().then(() => console.log("db is ready"));

app.use('/users', userRouter);
app.use('/books', bookRouter);

// Error Handling
app.use((err, req, res, next) => {
  const code = err.status || err.statusCode || 500;
  console.error("Error: ", err)
  res.status(code).send({ success: false, message: err.message });
})

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
})
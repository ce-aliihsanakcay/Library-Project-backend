import express from "express";
import { addTimeStamp } from "./middlewares/customMiddleware.js";
import { configureCors } from "./config/corsConfig.js";

const app = express();

app.use(express.json());
app.use(configureCors());
app.use(addTimeStamp);

export { app };
import { DateTime } from "luxon";

const addTimeStamp = (req, res, next) => {
  const date = new Date().toISOString();
  req.timestamp = DateTime.fromISO(date).toFormat('yyyy-MM-dd HH:mm:ss');
  next();
}

export { addTimeStamp };
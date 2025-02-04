import cors from "cors";

const configureCors = () => {
  return cors({
    // origin -> this will tell that which origins you want user can access your api
    "origin": (origin, callback) => {
      const whitelist = [
        "http://localhost:5173",
        "http://localhost:3000",
      ];
      if (whitelist.indexOf(origin) !== -1 || !origin) {
        callback(null, true); // giving permission
      } else {
        callback(new Error('Not allowed by CORS'))
      }
    },
    "methods": "GET,HEAD,PUT,PATCH,POST,DELETE",
    "credentials": true, // enable support for cookies
    "preflightContinue": false,
    "optionsSuccessStatus": 204,
  })
}

export { configureCors };

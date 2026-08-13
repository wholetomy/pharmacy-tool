import express from "express";
import cors from "cors";

import indexRouter from "./routers/index.router.js";
import usersRouter from "./routers/users.router.js";

const app = express();

app.use(cors());
app.use(express.json());

app.use("/", indexRouter);
app.use("/users", usersRouter);

app.get("/health", (req, res) => {
  res.json({
    status: "ok"
  });
});

export default app;
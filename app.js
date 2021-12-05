const express = require("express");
const app = express();
const port = 3000;

app.get("/ping", (_, res) => {
  res.status(200).json({
    status: 200,
    message: "pong",
  });
});

app.listen(port, () => console.log("Server initialized"));

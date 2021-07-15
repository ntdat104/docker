const express = require("express");
const app = express();
require("dotenv").config();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.json({
    title: "Hello Docker",
    code: 404,
  });
});

app.listen(PORT, () => console.log(`App is running in PORT:${PORT}`));

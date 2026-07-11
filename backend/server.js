const express = require("express");
const cors = require("cors");

const app = express();
const PORT = 3000;

// Allow requests from the React frontend
app.use(cors());

app.get("/", (req, res) => {
  res.send("🚀 Backend is running successfully!");
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
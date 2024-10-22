const mg = require("mongoose");
const dotenv = require("dotenv");
dotenv.config({ path: "../.env" });

async function connect() {
  try {
    await mg.connect(process.env.MONGOOSE_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log("Database successfully connected");
  } catch (err) {
    console.log("Database connection failure:", err.message);
  }
}

module.exports = { connect };

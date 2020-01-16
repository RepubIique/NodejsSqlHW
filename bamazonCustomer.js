let mysql = require("mysql");

let inquirer = require("inquirer");

let connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1q2w3e4r5t6y",
  port: 3306,
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  afterConnection();
  ask();
});

function afterConnection() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log(res);
  });
}

function ask() {
  inquirer
    .prompt([
      {
        name: "id",
        type: "list",
        message: "ID of the product you would like to buy",
        choices: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      },
      {
        name: "units",
        type: "number",
        message: "How many would you like to buy?"
      }
    ])
    .then(function(answer) {
      connection.query(
        `SELECT * FROM products WHERE item_id=${answer.id}`,
        function(err, res) {
          if (err) throw err;
          console.log(
            "There are " +
              res[0].stock_quantity +
              " " +
              res[0].product_name +
              "(s) available"
          );
        }
      );
      connection.query(
        `SELECT * FROM products WHERE item_id=${answer.id}`,
        function(err, res) {
          if (err) throw err;
          let remaining = res[0].stock_quantity - answer.units;
          if (remaining < 0) {
            console.log("Not enough stock");
          } else {
            console.log(
              "After " +
                answer.units +
                " purchases there are " +
                remaining +
                " " +
                res[0].product_name +
                "[s] remaining."
            );
          }
        }
      );
      connection.end();
    });
}

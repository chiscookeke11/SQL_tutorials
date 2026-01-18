// Import necessary modules
const http = require('http'); // Built-in module for creating HTTP servers
const mysql = require('mysql2'); // MySQL library for database interaction

// Create a connection to the database
const connection = mysql.createConnection({
  host: '127.0.0.1', // Database server location
  port: 3306,
  user: 'root', // Your database username
  password: 'neduOkeke', // Your database password
  database: 'mydb' // The name of your database
});

// Connect to the database
connection.connect((err) => {
  if (err) {
    console.error('Error connecting: ' + err.stack); // Log error if connection fails
    return;
  }
  console.log('Connected as id ' + connection.threadId); // Log success message with connection ID
});

// Create an HTTP server
const server = http.createServer((req, res) => {
  res.statusCode = 200; // Set response status code to OK
  res.setHeader('Content-Type', 'text/plain'); // Set response content type

  // Test query to check connection
  connection.query('SELECT * FROM  LIMIT 1', (error, results) => {
    if (error) {
      res.end('Error querying database'); // Send error message if query fails
      return;
    }

    res.end(`Database query successful: ${JSON.stringify(results)}`); // Send query results as response
  });
});

const sql  = 'SELECT * FROM expenses';

connection.query(sql, (err, results) => {
    if (err) {
        console.error("Error fetching data:", err.stack)
        return;
    }
    console.log("Query Results:", results)

})

// Listen on port 3300
server.listen(3300, () => {
  console.log('Server running at http://localhost:3300/'); // Log message when server starts
});




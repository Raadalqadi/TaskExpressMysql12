
const mysql = require('mysql2');

/* const Connection = mysql.createConnection({
    database: "taskmage",
    host: "127.0.0.1",
    user: "root",
    password: "",
  }); */

  const Connection = mysql.createConnection({
    host: 'mysql-10b5e818-raadalqadi4-9d11.e.aivencloud.com',
    user: 'avnadmin',
    password: 'AVNS_YfZuNhZciG6utx6oj_J',
    database: 'task',
    port: 25369,
    ssl: {
      require: true,
      rejectUnauthorized: false
    }
  });

Connection.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the database');
});

module.exports = { Connection };

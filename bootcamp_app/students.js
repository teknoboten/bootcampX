const { Pool } = require('pg');

const pool = new Pool({
  user: 'serra',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`
SELECT students.id, students.name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv.slice(2, 3)}%'
LIMIT ${process.argv.slice(3, 4) || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));


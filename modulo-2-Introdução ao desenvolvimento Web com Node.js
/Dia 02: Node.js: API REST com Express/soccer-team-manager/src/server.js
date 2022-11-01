// src/server.js
const fs = require('fs').promises;
const app = require('./app');

const teams = [
  {
    id: 1,
    name: 'São Paulo Futebol Clube',
    initials: 'SPF',
  },
  {
    id: 2,
    name: 'Clube Atlético Mineiro',
    initials: 'CAM',
  },
];

app.listen(3001, () => console.log('server running on port 3001'));

app.get('/', (req, res) => res.status(200).json({ menssage: 'olá' }));

app.get('/teams', (req, res) => res.status(200).json({ teams }));

app.post('/teams/:id', (req, res) => {
  const newTeam = { ...req.body };
  console.log(newTeam);
  teams.push(newTeam);

  res.status(201).json({ team: newTeam });
});
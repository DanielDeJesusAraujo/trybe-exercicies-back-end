const { app } = require('./app')

app.get(3000, (req, res) => { res.send('running on port 3000') })
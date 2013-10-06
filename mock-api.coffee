_ = require('underscore')
users = require('./users')
express = require('express')
app = express()

app.configure(->
	app.use(express.bodyParser())
)

app.get('/users', (request, response) ->
	response.json(users)
)

app.get('/users/:username', (request, response) ->
	user = _.findWhere(users,
		username: request.params.username
	)
	if (user?) then response.json(user)
	else response.send(404)
)

app.get('/users/:username/activities', (request, response) ->
	jsonPath = './users/' + request.params.username + '/activities'
	try
		response.json(require(jsonPath))
	catch
		response.send(404)
)

app.get('/activities/:id', (request, response) ->
	jsonPath = './activities/' + request.params.id
	try
		response.json(require(jsonPath))
	catch
		response.send(404)
)

app.listen(8888)

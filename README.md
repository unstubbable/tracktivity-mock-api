# Tracktivity mock REST API

A REST API with static JSON files used for simple mocking of [Tracktivity](https://github.com/KingHenne/tracktivity-server).

## Usage

Run `npm install` and `npm start`. A node.js server then runs at [localhost:8888](http://localhost:8888).

### Supported URLs

Only `GET` is supported at the moment.

A list of users:

	/users

User details:

	/users/:username

User activities:

	/users/:username/activities

Activity details:

	/activities/:id

# Todo-api

_Todo-list from command line for kool kids!_

### Features

Interact with todo-list from command line using [curl](https://curl.haxx.se/).

### Get stuff

#### To get a list of users:

```
$ curl -u admin:password http://localhost:3000/api/users
```

Example done on localhost server.

Todo-api has Items and Lists

#### To check a User's Lists:

```
$ curl -u admin:password http://localhost:3000/api/users/1/lists
```

#### To check all items on a specific List:

```
$ curl -u admin:password http://localhost:3000/api/lists/1/items
```

### Post stuff

To create a new user:

```
$ curl -u username:password -d "user[username]=Robo" -d "user[password]=Cop" http://localhost:3000/api/users/
```

To create new list:

```
$ curl -u username:password -d "list[name]=Justice stuff" -d "list[permission]=private" http://localhost:3000/api/users/1/lists
```

To create new item:
```
$ curl -u username:password -d "item[name]=Extinguish evil" -d "item[completed]=false" http://localhost:3000/api/lists/1/items
```

### Delete stuff

To delete existing user:

```
$ curl -u username:password -X DELETE http://localhost:3000/api/users/1/
```

To delete existing list:

```
$ curl -u username:password -X DELETE http://localhost:3000/api/users/1/lists/1
```

### Update stuff

To update a permission from List:

```
$ curl -X PUT -u username:password -d "list[permission]=public" http://localhost:3000/api/users/1/lists/1
```

To update an item's completion status:
```
$ curl -X PUT -u username:password -d "item[completed]=true" http://localhost:3000/api/users/1/lists/1/items
```


Access todo-api anywhere from command line and impress your friends today!

For questions, email me at: <mailto:letsmailiggy@gmail.com>

# Chat

Clone this project then:  

```
$ bundle install
$ rails db:setup
$ rails server
```

Example call: `localhost:3000/talent/chats`  

### talent view
| method | path                      | body              | description                |
|--------|---------------------------|-------------------|----------------------------|
| GET    | /talent/chats             |                   | list all chats             |
| POST   | /talent/chats/:company_id | {"message": ".."} | send a message to the chat |
| GET    | /talent/chats/:company_id |                   | list chat messages         |
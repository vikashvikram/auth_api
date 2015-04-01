## AuthApi

This project rocks and uses MIT-LICENSE. Its provides restful api for registration and authentication of users. Response is JSON only. This engine supposed to support you backend application by providing authentication mechanism.

### SETUP

add following line in Gemfile

```ruby
gem 'auth_api'
```

run following commands in console

```console
rails g auth_api
rake db:migrate
```

### USE (SAMPLE CURL REQUEST)

to register a new user

```console
curl http://yourdomain/your_path/register --data "name=test&password=password&email=abc@xyz.com" 
```
to authenticate an exising use

```console
curl http://yourdomain/your_path/authenticate --data "password=password&email=abc@xyz.com" 
```

### RESPONSE
response is always in JSON format and has two fields: 

* message: It contains user details or error message
* success: true or false based on success or failure of your request

= AuthApi

This project rocks and uses MIT-LICENSE. Its provides restful api for registration and authentication of users. Response is JSON only. This engine supposed to support you backend application by providing authentication mechanism.

## SETUP

Gemfile

```ruby
gem 'auth_api', git: 'https://github.com/vikashvikram/auth_api'
```

```console
rails g auth_api
rake db:migrate
```

===USE (SAMPLE CURL REQUEST)
curl http://yourdomain/your_path/register --data "name=test&password=password&email=abc@xyz.com" to register a new user

curl http://yourdomain/your_path/authenticate --data "password=password&email=abc@xyz.com" to authenticate an exising user

===RESPONSE
response is always in JSON format and has two fields: 

1) message: It contains user details or error message
2) success: true or false based on success or failure of your request
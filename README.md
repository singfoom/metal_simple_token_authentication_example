# metal_simple_token_authentication_example

A Ruby on Rails powered API using ActionController::Metal and Simple Token Authentication.

## Usage

### Using cURL

```bash
# create the database
rake db:create db:schema:load
# create an example user
rake db:seed

# start the application
rackup -p 3000

# try to read the Books#index without credentials
curl -I "http://localhost:3000/books"
# HTTP/1.1 401 Unauthorized

# try to read the Books#index with the correct credentials
curl -I "http://localhost:3000/books?user_email=alice@example.com&user_token=Ex4mPle_T0keN"
# HTTP/1.1 200 OK
```

### Using RSpec

```bash
# run the entire tests suite
rake
```


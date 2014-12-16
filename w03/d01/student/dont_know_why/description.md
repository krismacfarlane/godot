## Part 1

```ruby
module AppName                    # 1.  What is `AppName` and why do we use it?
  class Server < Sinatra::Base    # 2.  What is `Server`?
                                  # 3.  What is `Sinatra`?
                                  # 4.  What is `Base`?

    enable :logging               # 5.  What is `enable`?
    get('/') do                   # 6.  What is `get`?
                                  # 7.  What are the three inputs of `get`?

      $stderr.puts "We have an error."       # 8.  In Sinatra where does $stderr
                                             #     print to?
      logger.error "We have an error."       # 9.  What is `logger`?
                                             # 10. What is `error`?
                                             # 11. Where does `logger` print to?
                                             # 12. How is the logger print out
                                             #     different from $stderr?
      logger.info  "Made to: #{request.url}" # 13. What is the difference btwn
                                             #     `logger.error` and
                                             #     `logger.info`?
                                             # 14. What is `request`?
                                             # 15. What does `request`
                                             #     represent?
                                             # 16. What is `url`?

      status 200                  # 17. What is `status`?
                                  # 18. What is `status` called on; ie, where
                                  #     are we?
                                  # 19. What does 200 represent?

      # Test the below with the two requests:
      #   - curl http://localhost:3000?key=value
      #   - curl http://localhost:3000

      if request.params.length != 0         # 20. What is `params`?
                                            # 21. What does `params` return?
                                            # 22. What does it represent?
        body "The request's params were: '#{request.params}'.\n"
                                            # 23. What is `body`?
                                            # 24. What does it represent?
      else
        "Empty request params\n"            # 25. Why don't we call `body` here?
      end
    end
  end
end
```

1. AppName is the name of the module being created. Modules are used to prevent
repeating and they hold classes and are constants. They do not have methods of
their own.
2. Server is the name of a class that is being defined.
3. Sinatra is the name of the module that Server is inheriting from.
4. Base is the specific class within the Sinatra module that Server is getting
properities from
5. Enable is a method in Sinatra
6. Get is a method
7. # 7.  What are the three inputs of `get`? ****
8. $stderr. prints to the client's browser
9. Logger was invoked because we enabled logging. It is keeping records on the
developers (our) side of things, so you can go back and see the errors and
successes.
10. Error is a method called on logger.
11. Logger prints to the server side.
12. Logger prints to server side and $stderr goes to the client's.
13. Logger.info gives more information/explanation.
14. Request is what the client's server sent over
15. Request is an object.
16. url is a method called on the object 'request'
17. Status is used to set the response to the request
18. Status is called on 'get' which is the client's input (/)
19. Status codes with 200 are successes!
20. Params are the client's inputs following the url
21. Params returns a string
22. It represents the value of the client's inputs.
23. Body is a method
24. Body is what gets printed to the screen
25. That response does not need to be printed to the screen

## Part 2

```ruby
require 'sinatra/base'      # 1.  What is the purpose of this line?
                            # 2.  What does 'sinatra/base' refer to?
                            # 3.  Where is 'sinatra/base'?
require_relative './server' # 4.  Why are we using `require_relative`?
                            # 5.  What does './server' refer to?
                            # 6.  What type of path is './server'?
run AppName::Server         # 7.  What is `run`?
                            # 8.  What is `AppName::Server`?
                            # 9.  Where did `AppName::Server` come from?
                            # 10. Where did `run` come from?
```

1.  This requires the Sinatra library gem.
2.  This is the name of the ruby library.
3.  It's on the ruby server.
4.  Because you need to tell the rackup to look for the module to run
5.  The location of the module
6.  It is in the same folder as the rackup
7.  run is a method
8.  It is the name of the module and class that you will be pulling from
9.  It is in the .server file that was required
10. Run is found in the Sinatra gem.

## Bonus

```bash
rackup -p 3000 # 1.  What is `rackup`?
               # 2.  What does the -p 3000 mean?
               # 3.  Are there other options than -p?
               # 4.  Where does `rackup` come from (what Gem does it come with)?
               # 5.  What is the code for `rackup`?
               #     (hint: `sudo find ~ -iname "rackup"`)
               # 6.  What does `#!/usr/bin/env ruby` mean?
```

1.
1.
1.
1.
1.
1.

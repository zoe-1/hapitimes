
[Home -- Hapitimes Learning Trail](../index.html)

### End Goal: Is to build an application that has the following features:
* A public page(s) accessible to all. 
* Route(s) with restricted access. Only authenticated users with correct permissions will have access to restricted routes. 
* Sessions support using "a simple cookie-based session management. The user has to be authenticated with a web form, and upon successful authentication, receive a reply with a session cookie." [hapi-auth-cookie](https://github.com/hapijs/hapi-auth-cookie)  
* form validation using [joi](https://github.com/hapijs/joi).
* tls / ssl support as described at: [learning objectives]( https://github.com/zoe-1/hapitimes)
* Combat Cross-Site Request Forgery (CSRF) attacks by using [hapijs / crumb](https://github.com/hapijs/crumb)
* Configure a plugin to serve static files: css, images, and JavaScript.
* Render html templates with a configured template engine (handlebars). 
* Configure a plugin to utilize partial html templates and helpers to generate data for html templates.

In the end the application will have the following routes:
* A home page open to the public (unrestricted) -- home.
* A login page with login HTML form (unrestricted) -- login.
* A logged in landing page (restricted) -- loggedin
* The above routes would be in the "home" plugin. .<br/>
If desired we can make the loggedin route be it's own plugin with a prefix configured.
[See plugins tutorial](http://www.hapijs.com/tutorials/plugins) for more about prefixes.

<hr/>
#### Validation versus rendering views
In order to begin writing code that validates submitted data, we need to create HTML pages that
submit form data (POST requests) or links (GET requests). Then, we can write validation code that tests the submitted data.  Hence, we first need to make a plugin that renders or serves HTML views. Then, we can make code that validates submissions made from these HTML pages.  Otherwise, where are we going to make POST and GET requests from?
We could validate requests from curl. But, I think most people would be more interested in how to make a web server that serves HTML pages or renders HTML templates.  And, they would want to know how to handle POST and GET requests made from those pages / HTML templates. 
For more about rendering HTML templates please read [hapijs tutorial on views](http://www.hapijs.com/tutorials/views)


#### Why move hapi-auth-basic registration logic
There are several reasons to move the registration logic out of the private plugin.
* Readability -- If we move the registration logic of hapi-auth-basic out of the private 
plugin, it makes the code much more readable. This will help newcomers to hapijs and JavaScript
understand where and how the authentication plugin is being registered. 
* Separation of logic -- separating the logic for loading an authentication plugin from the route handlers is clean.  Having it all nested together is messy.   
* Preparing to not use hapi-auth-basic 
   * hapi-auth-basic is really easy to use but is not that useful.  A real world application needs sessions, cookies, and uses HTML forms to login not a browser's default login dialogue.  So, the plan is to transition to use [hapi-auth-cookie](https://github.com/hapijs/hapi-auth-cookie) this is what npm uses for their authentication, cookies, and session needs: [npm / newww](https://github.com/npm/newww).  
   * Easier transition:  If we separate the registration of the auth plugin registration logic now, it will make it easier to swap in hapi-auth-cookie registration logic in a later assignment.  
* A pretty and useful manifest file  --  Glue uses a manifest file or JSON object to configure the loading of plugins used by a server.  If the authentication plugin registration logic is in it's own separate file, it is easy to spot when reading the manifest file.  Newcomers to hapi will appreciate not having to dig through all the plugins to find the one that has auth plugin registration logic in it.  
* Burying or nesting something as important as your user authentication plugin within route handlers really seems counter intuitive.   

#### logging
Yes, we are going to add server logging eventually. 

#### Making use of a proper DB. 
Using a proper DB is super important. But, it should come after reaching the end goal described above.  For now the plan is to use JSON objects as our data source. 
If we accomplish the end goal described above, users will have a clear example of how to make a hapijs web server with some core security features built in like: CSRF tokens and cookies encrypted using Iron.  Using a proper DB right now would muddle our mastery of the hapijs framework.  For now, let's just focus on hapi.  

#### After we achieve our end goal
If we complete the above application, the hapijs community will have boilerplate code that many applications will be able to use regardless of the DB. We could then take that boilerplate code and start a new project like a todo application using MongoDB. It would feature user administration (CRUD) and todo list management.



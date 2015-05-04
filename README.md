# hapitimes   
Compose a hapijs server configured with: multiple plugins registered, tls, <br/>
validation tools, an authentication system, server logging, and 100% test coverage.<br/>

http://www.hapijs.com<br/>
## Register Plugins With The Server 
Utilize hapijs' modular plugin design to make plugins which:
* are configured to use a prefix. 
* serve static files: css, images, and JavaScript.
* render html templates with a configured template engine. 
* utilize partial html templates.
* make use of helpers to generate data for html templates. 
* Use [hapijs / glue](https://github.com/hapijs/glue) to compose a hapijs server
  that loads all application plugins. 

### Configure Your Server with tls (template layer security)
* Use openssl to generate a self signed security certificate.
* Configure glue's manifest file to compose a server with tls (template layer security).
* [What is Transport Layer Security?](http://en.wikipedia.org/wiki/Transport_Layer_Security)<br/>


### Perform Validation with joi
* configure plugins to use joi.
* Utilize [hapijs / joi](https://github.com/hapijs/joi) plugin to validate POST AND GET requests. 


### Authenticate Users With hapi-auth-cookie
* Configure the application to use [hapijs / hapi-auth-cookie](https://github.com/hapijs/hapi-auth-cookie). 
* Configure glue to load the authentication plugin.
* Create basic login system. 

### Testing 
* Configure the application to use [hapijs / lab](https://github.com/hapijs/lab) and [hapijs / code](https://github.com/hapijs/code) to make tests. 
* Write tests that cover 100% of the application.


### Logging
* Configure the server to make log records.
* Write logs to file.


### Project Packages
[hapijs / hapi](https://github.com/hapijs/hapi)<br/>
[hapijs / hoek](https://github.com/hapijs/hoek)<br/>
[hapijs / hapi-auth-cookie](https://github.com/hapijs/hapi-auth-cookie)<br/>
[hapijs / joi](https://github.com/hapijs/joi) <br/>
[hapijs / lab](https://github.com/hapijs/lab)  <br/>
[hapijs / code](https://github.com/hapijs/code)<br/>
[hapijs / crumb](https://github.com/hapijs/crumb)<br/>

<hr/>

### Things to Consider:
* Which authentication plugin is best for the tutorial?<br/>
  [npm/newww](https://github.com/npm/newww) used [hapi-auth-cookie](https://github.com/hapijs/hapi-auth-cookie) so I chose it.
* Need to add crumb to the project?
  [hapijs / crumb](https://github.com/hapijs/crumb)<br/>
  It seems crumb is designed for a webapi rather than website.


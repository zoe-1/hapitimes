# Assignment 5

[Home -- Hapitimes Learning Trail](../index.html)


Below is a potential assignment to keep the project moving.
Hopefully, you will find this acceptable.  Your feedback would be appreciated. 
This should build off previous assignments and move us one step forward to master the learning objectives described at: https://github.com/zoe-1/hapitimes.

#### [Assignment 5] Glue and HTML views
*  Refactor the application to use the hapijs server composer  [hapijs / glue](https://github.com/hapijs/glue).  <br/>Glue should be used to load all plugins.<br/>
   Note about hapi-auth-basic: 
   * Refactor the application to load hapi-auth-basic plugin using glue's manifest file.  
   * Remove hapi-auth-basic plugin registration code from the private.js file.
   * private.js plugins' functionality will not change.  We are just moving where the 
     hapi-auth-basic plugin is registered.  
   * Place hapi-auth-basic plugin registration code in it's own file dedicated to registering the plugin.
   Glue will reference this file in the manifest file to load the plugin. 
*  Create a plugin called "home".
   * This plugin should have one endpoint called "home".
   * Configure the plugin to use handlebars template rendering engine to render html templates.
   * Configure this plugin to serve html view files and make the home endpoint render an html page/template.
   *  Configure the home plugin to find view files in a directory named "views" located in
   the root path of the application. For now, just make html pages for view files (no .hbs files).
*  In the end, the application should have thee endpoints. One called: "home", 
   the other called "version", and one called "private". Each point is located in it's own plugin 
   which glue composes when the server starts up. 
*  Ensure 100% test coverage.<br/>
   Note, testing if a plugin loads is not practical with Glue. 
   If a plugin described in the manifest file does not load, glue will throw errors and shut down the application.
   So, you cannot test if a plugin loads or not with glue.  If a plugin fails to load the app shutsdown and nothing else gets executed. 

##### Hints:
* The Glue project on github has a sample manifest file.<br/>
   [Sample Manifest JSON object](https://github.com/hapijs/glue/blob/master/lib/index.js)
* Everything in node.js that loads with require() is a singleton object.
* Get Glue configured and working before adding the new "home" plugin to the project.

#### Due Date: May 28th 2015.



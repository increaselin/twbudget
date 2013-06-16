exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before:
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery-1.8.2.js'
          'vendor/scripts/angular/angular.js'
          'vendor/scripts/angular/angular-resource.js'
          'vendor/scripts/angular/angular-cookies.js'

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
    templates:
      joinTo:
        # this name is required for jade_angular plugin to work
        'js/dontUseMe': /^app/

  # Enable or disable minifying of result js / css files.
  # minify: true
  plugins:
    jade:
      options:
        pretty: yes
      locals: {}
    static_jade:
      extension: '.static.jade'
      path: [ /^app/ ]
    jade_angular:
      modules_folder: \partials
      locals: {}

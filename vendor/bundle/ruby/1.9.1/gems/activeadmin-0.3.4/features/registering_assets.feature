Feature: Registering Assets

  Registering CSS and JS files

  Background:
    Given a configuration of:
    """
      ActiveAdmin.register Post
    """
    And I am logged in


  Scenario: Viewing default asset files
    When I am on the index page for posts
    Then I should see the css file "admin/active_admin.css"
    Then I should see the js file "active_admin_vendor.js"
    Then I should see the js file "active_admin.js"

  Scenario: Registering a CSS file
    Given a configuration of:
    """
      ActiveAdmin.application.register_stylesheet "some-random-css.css"
      ActiveAdmin.register Post
    """
    When I am on the index page for posts
    Then I should see the css file "some-random-css.css"

  Scenario: Registering a JS file
    Given a configuration of:
    """
      ActiveAdmin.application.register_javascript "some-random-js.js"
      ActiveAdmin.register Post
    """
    When I am on the index page for posts
    Then I should see the js file "some-random-js.js"

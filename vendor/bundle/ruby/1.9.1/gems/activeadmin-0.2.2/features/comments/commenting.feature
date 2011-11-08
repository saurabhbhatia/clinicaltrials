Feature: Commenting

  As a user
  In order to document changes and have a discussion
  I want to store and view comments on a resource

  Background:
    Given a post with the title "Hello World" written by "Jane Doe" exists
    Given a show configuration of:
      """
        ActiveAdmin.register Post
      """

  Scenario: View a resource with no comments
    Then I should see "Comments (0)"
    And I should see "No comments yet."

  Scenario: Create a new comment
    When I add a comment "Hello from Comment"
    Then I should see a flash with "Comment was successfully created"
    And I should be in the resource section for posts
    And I should see "Comments (1)"
    And I should see "Hello from Comment"
    And I should see a comment by "admin@example.com"

  Scenario: View resource with comments turned off
    Given a show configuration of:
    """
      ActiveAdmin.register Post do
        config.comments = false
      end
    """
    Then I should not see "Comments"

  Scenario: View a resource in a namespace that doesn't have comments
    Given a configuration of:
    """
      ActiveAdmin.register Post, :namespace => :new_namespace
    """
    When I am on the index page for posts in the new_namespace namespace
    And I follow "View"
    Then I should not see "Comments"

  Scenario: Creating a comment in one namespace does not create it in another
    Given a show configuration of:
    """
      ActiveAdmin.allow_comments_in << :public
      ActiveAdmin.register Post
      ActiveAdmin.register Post, :namespace => :public
    """
    When I add a comment "Hello world in admin namespace"
    Then I should see "Hello world in admin namespace"
    When I am on the index page for posts in the public namespace
    And I follow "View"
    Then I should not see "Hello world in admin namespace"
    And I should see "Comments (0)"

    When I add a comment "Hello world in public namespace"
    Then I should see "Hello world in public namespace"
    When I am on the index page for posts in the admin namespace
    And I follow "View"
    Then I should not see "Hello world in public namespace"
    And I should see "Comments (1)"

  Scenario: Creating a comment on an aliased resource
    Given a configuration of:
    """
    ActiveAdmin.register Post, :as => "Article"
    """
    When I am on the index page for articles
    And I follow "View"
    When I add a comment "Hello from Comment"
    Then I should see a flash with "Comment was successfully created"
    And I should be in the resource section for articles

  Scenario: Create an empty comment
    When I add a comment ""
    Then I should see a flash with "Comment wasn't saved, text was empty."
    And I should see "Comments (0)"

  Scenario: Viewing all commments for a namespace
    When I add a comment "Hello from Comment"
    When I am on the index page for comments
    Then I should see a table header for "Body"
    And I should see "Hello from Comment"

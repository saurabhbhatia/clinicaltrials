Feature: Show - Default Content

  Viewing the show page for a resource

  Background:
    Given a post with the title "Hello World" written by "Jane Doe" exists

  Scenario: Viewing the default show page
    Given a show configuration of:
      """
        ActiveAdmin.register Post
      """
    Then I should see the attribute "Title" with "Hello World"
    And I should see the attribute "Body" with "Empty"
    And I should see the attribute "Created At" with a nicely formatted datetime
    And I should see the attribute "Author" with "jane_doe"
    And I should see an action item button "Delete Post"
    And I should see an action item button "Edit Post"

  Scenario: Attributes should link when linked resource is registered
    Given a show configuration of:
      """
        ActiveAdmin.register User
        ActiveAdmin.register Post
      """
    Then I should see the attribute "Author" with "jane_doe"
    And I should see a link to "jane_doe"

  Scenario: Customizing the attributes table with a set of attributes
    Given a show configuration of:
    """
      ActiveAdmin.register Post do

        show do
          attributes_table :title, :body, :created_at, :updated_at
        end

      end
    """
    Then I should see the attribute "Title" with "Hello World"
    And I should see the attribute "Body" with "Empty"
    And I should see the attribute "Created At" with a nicely formatted datetime
    And I should not see the attribute "Author"

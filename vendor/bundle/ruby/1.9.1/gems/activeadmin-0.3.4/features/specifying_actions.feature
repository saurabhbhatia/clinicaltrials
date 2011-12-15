Feature: Specifying Actions

  Specifying which actions to allow on my resource

  Scenario: Only creating the index action
    Given a configuration of:
      """
        ActiveAdmin.register Post do
          actions :index
        end
      """
	And I am logged in
    And a post with the title "Hello World" exists
    When I am on the index page for posts
    Then an "AbstractController::ActionNotFound" exception should be raised when I follow "View"

  Scenario: Specify a custom collection action with template
    Given a configuration of:
      """
        ActiveAdmin.register Post do
          action_item(:only => :index) do
            link_to('Import Posts', import_admin_posts_path)
          end

          collection_action :import
        end
      """
    Given "app/views/admin/posts/import.html.erb" contains:
      """
        <p>We are currently working on this feature...</p>
      """
    And I am logged in
    When I am on the index page for posts
    And I follow "Import"
    Then I should see "We are currently working on this feature"

  Scenario: Specify a custom member action with template
    Given a configuration of:
      """
        ActiveAdmin.register Post do
          action_item(:only => :show) do
            link_to('Review', review_admin_post_path)
          end

          member_action :review do
            @post = Post.find(params[:id])
          end
        end
      """
    Given "app/views/admin/posts/review.html.erb" contains:
      """
        <h1>Review: <%= @post.title %></h1>
      """
    And I am logged in
    And a post with the title "Hello World" exists
    When I am on the index page for posts
    And I follow "View"
    And I follow "Review"
    Then I should see "Review: Hello World"
    And I should see the page title "Review"
    And I should see the Active Admin layout

  Scenario: Specify a custom member action with template using arb
    Given a configuration of:
      """
        ActiveAdmin.register Post do
          action_item(:only => :show) do
            link_to('Review', review_admin_post_path)
          end

          member_action :review do
            @post = Post.find(params[:id])
          end
        end
      """
    Given "app/views/admin/posts/review.html.arb" contains:
      """
        h1 "Review: #{@post.title}"
      """
    And I am logged in
    And a post with the title "Hello World" exists
    When I am on the index page for posts
    And I follow "View"
    And I follow "Review"
    Then I should see "Review: Hello World"
    And I should see the page title "Review"
    And I should see the Active Admin layout

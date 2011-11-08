Feature: Index Scoping

  Viewing resources and scoping them

  Scenario: Viewing resources with one scope and no default
    Given 10 posts exist
    And an index configuration of:
      """
      ActiveAdmin.register Post do
        scope :all
      end
      """
    Then I should see the scope "All" not selected
    And I should see the scope "All" with the count 10
    And I should see 10 posts in the table

  Scenario: Viewing resources with one scope as the default
    Given 10 posts exist
    And an index configuration of:
      """
      ActiveAdmin.register Post do
        scope :all, :default => true
      end
      """
    Then I should see the scope "All" selected
    And I should see the scope "All" with the count 10
    And I should see 10 posts in the table

  Scenario: Viewing resources with mulitple scopes as blocks
    Given 10 posts exist
    And an index configuration of:
      """
      ActiveAdmin.register Post do
        scope 'Today', :default => true do |posts|
          posts.where(["created_at > ? AND created_at < ?", ::Time.zone.now.beginning_of_day, ::Time.zone.now.end_of_day])
        end
        scope 'Tomorrow' do |posts|
          posts.where(["created_at > ? AND created_at < ?", ::Time.zone.now.beginning_of_day + 1.day, ::Time.zone.now.end_of_day + 1.day])
        end
      end
      """
    Then I should see the scope "Today" selected
    And I should see the scope "Tomorrow" not selected
    And I should see the scope "Today" with the count 10
    And I should see the scope "Tomorrow" with the count 0
    And I should see 10 posts in the table
    And I should see a link to "Tomorrow"

    When I follow "Tomorrow"
    Then I should see the scope "Tomorrow" selected
    And I should see the scope "Today" not selected
    And I should see a link to "Today"

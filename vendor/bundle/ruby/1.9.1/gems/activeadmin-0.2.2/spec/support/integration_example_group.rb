require 'action_dispatch'
require 'capybara/rails'
require 'capybara/dsl'

module RSpec
  module Rails
    module IntegrationExampleGroup
      extend ActiveSupport::Concern

      include ActionDispatch::Integration::Runner
      include RSpec::Rails::TestUnitAssertionAdapter
      include ActionDispatch::Assertions
      include Capybara
      include RSpec::Matchers

      module InstanceMethods
        def app
          ::Rails.application
        end

        def last_response
          page
        end
      end

      included do
        before do
          @router = ::Rails.application.routes
        end
      end
    end
  end
end

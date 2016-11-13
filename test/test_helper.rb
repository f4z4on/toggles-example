ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/mock'

class ActiveSupport::TestCase
  ##
  # Enable given feature while executing the block.
  def enable feature, &block
    stub_feature feature, true, &block
  end

  ##
  # Disable given feature while executing the block.
  def disable feature, &block
    stub_feature feature, false, &block
  end

  ##
  # Set feature to given value while executing the block.
  def stub_feature feature, value, &block
    Feature.stub :config,
                 Feature.config.merge({feature => !!value}),
                 &block
  end
end

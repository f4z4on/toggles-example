require 'test_helper'

require 'feature'

class FeatureTest < Minitest::Test
  EMPTY_CONFIG = {}

  def test_enabled_feature
    stub_config 'new_feature' => true do
      assert Feature.enabled? 'new_feature'
    end
  end

  def test_disabled_feature
    stub_config 'new_feature' => false do
      refute Feature.enabled? 'new_feature'
    end
  end

  def test_undefined_feature
    stub_config do
      refute Feature.enabled? 'new_feature'
    end
  end

  private

  def stub_config config = EMPTY_CONFIG, &block
    YAML.stub :load_file, config, &block
  end
end

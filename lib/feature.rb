# coding: utf-8

##
# Feature toggles in Rails.
#
# Configuration is stored in Rails `config` directory in
# `features.yml`. This is an example:
#
#     new_feature: false
#     another_feature: true
#
# As you can see, it expects simple key-value pairs.
#
# Current implementation is very naïve and parses the config file
# every time it needs some information from it.
module Feature
  ##
  # Checks if given feature is enabled.
  def self.enabled? feature
    !!YAML.load_file(Rails.root.join('config', 'features.yml'))[feature]
  end
end

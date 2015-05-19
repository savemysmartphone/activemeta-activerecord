module ActiveMeta
  module Recipes
    module ActiveRecord
      extend ActiveSupport::Autoload

      autoload :Validations
    end
  end
end

ActiveMeta::Attribute.send(:include, ActiveMeta::Recipes::ActiveRecord::Validations)

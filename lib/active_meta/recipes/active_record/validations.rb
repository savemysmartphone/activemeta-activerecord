module ActiveMeta
  module Recipes
    module ActiveRecord
      module Validations
        extend ActiveSupport::Autoload

        autoload :Validates
        autoload :ValidatesFormat
        autoload :ValidatesInclusion
        autoload :ValidatesPresence
        autoload :ValidatesUniqueness

        def validates(opts)
          register_rule(Validates.new(attribute, 'validates', opts))
        end

        def validates_format(opts)
          register_rule(ValidatesFormat.new(attribute, 'validates_format', opts))
        end

        def validates_inclusion(opts)
          register_rule(ValidatesInclusion.new(attribute, 'validates_inclusion', opts))
        end

        def validates_presence(opts = {})
          register_rule(ValidatesPresence.new(attribute, 'validates_presence', opts))
        end

        def validates_uniqueness(opts = {})
          register_rule(ValidatesUniqueness.new(attribute, 'validates_uniqueness', opts))
        end
      end
    end
  end
end

module ActiveMeta
  module Recipes
    module ActiveRecord
      module Validations
        class ValidatesInclusion < ActiveMeta::Rule
          def to_proc
            binded_attribute = attribute
            binded_opts = opts
            Proc.new do
              validates_inclusion_of binded_attribute, binded_opts
            end
          end
        end
      end
    end
  end
end

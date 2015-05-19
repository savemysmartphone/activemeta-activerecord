module ActiveMeta
  module Recipes
    module ActiveRecord
      module Validations
        class ValidatesUniqueness < ActiveMeta::Rule
          def to_proc
            binded_attribute = attribute
            binded_opts = opts
            Proc.new do
              validates_uniqueness_of binded_attribute, binded_opts
            end
          end
        end
      end
    end
  end
end

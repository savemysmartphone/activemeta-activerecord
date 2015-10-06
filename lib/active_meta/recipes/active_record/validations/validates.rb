module ActiveMeta
  module Recipes
    module ActiveRecord
      module Validations
        class Validates < ActiveMeta::Rule
          def to_proc
            binded_attribute = attribute
            binded_opts = opts
            Proc.new do
              validates binded_attribute, binded_opts
            end
          end
        end
      end
    end
  end
end

module ActiveMeta
  module Recipes
    module ActiveRecord
      module Validations
        class ValidatesPresence < ActiveMeta::Rule
          def to_proc
            binded_attribute = attribute
            binded_opts = opts
            Proc.new do
              validates_presence_of binded_attribute, opts
            end
          end
        end
      end
    end
  end
end

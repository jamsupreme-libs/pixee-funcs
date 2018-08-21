require 'pixee/funcs/version'

module Pixee
  # Helper pixee functions.
  # May also spread these into the global context, haven't decided
  module Funcs
    class << self
      # Returns the first truthy item it encounters
      def first_truthy(collection)
        raise ArgumentError, 'Argument must respond to :each' unless collection.respond_to?(:each)

        collection.each do |item|
          return item if item
        end

        nil
      end
    end
  end
end

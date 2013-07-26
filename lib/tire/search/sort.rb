module Tire
  module Search

    class Sort
      def initialize(*args, &block)
        @value = []
        args.each do |options|
          @value << options if optinos.is_a?(Hash)
        end
        block.arity < 1 ? self.instance_eval(&block) : block.call(self) if block_given?
      end

      def by(name, direction=nil)
        @value << ( direction ? { name => direction } : name )
        self
      end

      def to_ary
        @value
      end

      def to_json(options={})
        @value.to_json
      end
    end

  end
end

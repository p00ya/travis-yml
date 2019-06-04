# frozen_string_literal: true
require 'travis/yml/docs/examples/node'

module Travis
  module Yml
    module Docs
      module Examples
        class Seq < Node
          register :seq

          def example
            node.types.map { |node| build(node).examples }.flatten
          end

          def expand
            nodes = node.types.map { |node| build(node).expand }.flatten.map(&:node)
            nodes.map { |node| Seq.new(Yml::Schema::Type::Seq.new(nil, types: [node])) }
          end
        end
      end
    end
  end
end
class PolyTreeNode
  attr_accessor :children
  attr_reader :parent, :value

  def initialize(value)
    @parent = nil
    @children = Array.new
    @value = value
  end

  def parent=(node)
    if parent
      parent.children.reject! { |element| element == self }
    end

    @parent = node
    node.children << self if node && !node.children.include?(self)

  end

end

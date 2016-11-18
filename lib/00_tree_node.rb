class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = Array.new
    @value = value
  end

  def parent=(node)
    unless parent
      ##Reassign parent/children
    end

    @parent = node
    node.children << self if node && !node.children.include?(self)

  end

end

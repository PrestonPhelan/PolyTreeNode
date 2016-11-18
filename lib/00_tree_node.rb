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

    node
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise unless children.include?(child_node)
    child_node.parent = nil
  end

end

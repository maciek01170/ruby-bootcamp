class Tree
  attr_accessor :children, :node_name
  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def set_children(children=[])
    @children = children
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

def simple_test
  ruby_tree = Tree.new( "Ruby" ,
                      [Tree.new("Reia" ),
                       Tree.new("MacRuby" )] )
  puts "Visiting a node"
  ruby_tree.visit {|node| puts node.node_name}
  puts
  puts "visiting entire tree"
  ruby_tree.visit_all {|node| puts node.node_name}
end

#simple_test

def indent(i)
  r= ''
  i.times { r+= '   ' }
  r
end

def DFS(i, root)
  puts indent(i)+"#{root}"
  root.each { |n,c|
    puts

  }

end
#
# Parameters : 
# h: hash
# i: indent to apply when pretty printing.
def pp_hash(i, root, hash)
  root_node= Tree.new(root)
  rtl=[]
  hash.each { |node,children|
    puts indent(i) + "#{node}... #{children.class}"
    rtl.push(child= Tree.new(node))
    if children.class.to_s == 'Hash' && children.size() > 0
      rtl.push(Tree.new( node, pp_hash(i+1, node, children)))
    end
  }
  puts "rtl.class= #{rtl.class}, #{rtl}"
  root_node.set_children(rtl)
  root_node
#  Tree.new ("root", rtl)
end


def fill_from_hash
  tree_as_hash= {
      'grandpa' => {
          'dad' => {
              'child 1' => {},
              'child 2' => {}
          },
          'uncle' => {
              'child 3' => {},
              'child 4' => {}
          }
      }
  }

  tree= pp_hash(0, 'root', tree_as_hash)
  puts "visiting entire tree"
  tree.visit_all {|node| puts node.node_name}
end

fill_from_hash
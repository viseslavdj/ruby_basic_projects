class LinkedList
  def initizalize(head)
    @head = nil
  end

  attr_reader :head

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      help_node = @head
      help_node = help_node.next_node until help_node.next_node.nil?
      help_node.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      help_node = @head
      @head = Node.new(value)
      @head.next_node = help_node
    end
  end

  def size
    if @head.nil? 
      return 0
    end
    count = 1
    help_node = @head
    while (help_node.next_node == nil)
      help_node = help_node.next_node
      count += 1
    end
    count
  end

  def tail
    if @head.nil?
      nil
    else
      help_node = @head
      help_node = help_node.next_node until help_node.next_node.nil?
      help_node
    end
  end

  def at(index)
    if @head.nil?
      nil
    end

    help_node = @head
    index.times do ###
      break if help_node.nil?

      help_node = help_node.next_node
    end
    help_node.value
  end

  def pop
    if @head.nil?
      puts "List is already empty"
    else
      help_node = @head
      help_node = help_node.next_node until help_node.next_node.next_node.nil?
      output = help_node.next_node
      help_node.next_node = nil
      output.value
    end
  end

  def contains?(value)
    if @head.nil?
      return false
    end

    if @head.value == value
      return true
    end
    
    help_node = @head
    until help_node.next_node.nil?
      help_node = help_node.next_node
      return true if help_node.value == value
    end
    false
  end

  def find(value)
    if @head.nil?
      return nil?
    end

    if @head.value == value
      return 0
    end
    
    help_node = @head
    count = 0
    until help_node.next_node.nil?
      count += 1
      if help_node.next_node.value == value
        return count
      end
      
      help_node = help_node.next_node
    end
    return nil
  end

  def to_s
    if @head.nil?
      return ''
    end

    help_node = @head
    output = String.new("( #{@head.value} )")
    until help_node.next_node.nil?
      help_node = help_node.next_node
      output << " -> ( #{help_node.value} )"
    end
    output << ' -> nil'
  end

  def insert_at(value, index)
    if index.zero?
      append(value)
    end

    help_node = @head
    (index-1).times { help_node = help_node.next_node }
    next_next_node = help_node.next_node
    help_node.next_node = Node.new(value)
    help_node.next_node.next_node = next_next_node
  end

  def remove_at(index)
    if index.zero?
      output = @head.value
      @head = @head.next_node
    else
      help_node = @head
      (index - 1).times { help_node = help_node.next_node }
      output = help_node.next_node.value
      help_node.next_node = help_node.next_node.next_node
    end
    output
  end

end

class Node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  attr_accessor :value, :next_node

end


list = LinkedList.new
list.append('a')
list.prepend('b')
list.append('c')
puts list.to_s
puts list.size
puts list.at(0)
puts list.pop
puts list.contains?('d')
puts list.contains?('a')
puts list.find('c')
list.prepend('d')
puts list.find('d')
puts list.to_s
puts list.at(2)
puts list.remove_at(1)
puts list.to_s
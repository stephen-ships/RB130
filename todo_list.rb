# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def each
    todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
    list = TodoList.new(self.title)
    each do |todo|
      list.add(todo) if yield(todo)
    end
    list
  end

  # takes a string as argument, and returns 
  # the first Todo object that matches the argument. 
  # Return nil if no todo is found.
  def find_by_title(search_title)
    select { |todo| todo.title == search_title }.first
  end

  # returns new TodoList object containing only the done items
  def all_done
    select do |todo|
      todo.done?
    end
  end

  def all_not_done
    select do |todo|
      !todo.done?
    end
  end

  def mark_done(todo_title)
    find_by_title(todo_title).done!
  end

  def mark_all_done
    done!
  end

  def mark_all_undone
    each do |todo|
      todo.undone!
    end
  end
  # ---- Adding to the list -----
  # adds todo to end of list, returns list
  # Can only accept to do objects
  def add(todo)
    raise TypeError("Can only add Todo objects") if !todo.is_a?(Todo)
    todos << todo
  end

  # ---- Interrogating the list -----
  # Number of todo objects in list
  def size
    todos.size
  end

  # returns todo, which is the first item in the list
  def first
    todos.first
  end

  # returns todo, which is the last item in the list
  def last
    todos.last
  end

  # returns an array of all todo items in the list
  def to_a
    todos
  end

  # returns true if all todos in the list are done, otherwise false
  def done?
    todos.all? {|todo| todo.done? }
  end

  # ---- Retrieving an item in the list ----
  # Retrieving an item in the list at index
  # returns todo (zero based indexing)
  def item_at(index)
    raise IndexError if index >= todos.size # 0 based index
    todos[index]
  end

  # ---- Marking items in the list -----
  # Marking an item in the list done at index
  def mark_done_at(index)
    item_at(index).done!
  end
  
  # Marking an item in the list un-done at index
  def mark_undone_at(index)
    item_at(index).undone!
  end

  # marks all items as done
  def done!
    todos.each {|todo| todo.done! }
  end

  # ---- Deleting from the list -----
  # removes and returns the first item in list
  def shift
    todos.shift
  end

  # removes and returns the last item in list
  def pop
    todos.pop
  end
  
  # removes and returns the todo item at index
  def remove_at(index)
    raise IndexError if index >= todos.size # 0 based index
    todos.delete_at(index)
  end
  
  # returns string representation of the list
  def to_s
    puts "---- #{title} ----"
    todos.each do |todo|
      puts todo
    end
  end
end


# given
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

# # ---- Adding to the list -----

# # add
# list.add(todo1)                 # adds todo1 to end of list, returns list
# list.add(todo2)                 # adds todo2 to end of list, returns list
# list.add(todo3)                 # adds todo3 to end of list, returns list
# # list.add(1)                     # raises TypeError with message "Can only add Todo objects"

# # <<
# # same behavior as add

# # ---- Interrogating the list -----

# # size
# list.size                       # returns 3

# # first
# list.first                      # returns todo1, which is the first item in the list

# # last
# list.last                       # returns todo3, which is the last item in the list

# #to_a
# list.to_a                      # returns an array of all items in the list

# #done?
# list.done?                     # returns true if all todos in the list are done, otherwise false

# # ---- Retrieving an item in the list ----

# # item_at
# # list.item_at                    # raises ArgumentError
# list.item_at(1)                 # returns 2nd item in list (zero based index)
# # list.item_at(3)               # raises IndexError

# # ---- Marking items in the list -----

# # mark_done_at
# # list.mark_done_at               # raises ArgumentError
# list.mark_done_at(1)            # marks the 2nd item as done
# # list.mark_done_at(100)          # raises IndexError

# # mark_undone_at
# # list.mark_undone_at             # raises ArgumentError
# # list.mark_undone_at(1)          # marks the 2nd item as not done,
# # list.mark_undone_at(100)        # raises IndexError

# # done!
# # list.done!                      # marks all items as done
# # ---- Deleting from the list -----

# # shift
# # list.shift                      # removes and returns the first item in list

# # pop
# # list.pop                        # removes and returns the last item in list

# # remove_at
# # list.remove_at                  # raises ArgumentError
# # p list.remove_at(1)               # removes and returns the 2nd item
# # p list.remove_at(100)             # raises IndexError

# # ---- Outputting the list -----

# # to_s
# list.to_s                      # returns string representation of the list

# # ---- Today's Todos ----
# # [ ] Buy milk
# # [ ] Clean room
# # [ ] Go to gym

# # or, if any todos are done

# # ---- Today's Todos ----
# # [ ] Buy milk
# # [X] Clean room
# # [ ] Go to gym


todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

# todo1.done!
p list
results = list.find_by_title("Buy milk")
p results
# puts list.inspect
# list.mark_all_undone
# puts list.inspect
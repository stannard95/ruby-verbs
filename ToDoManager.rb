class ToDoManager 
  @@todos = ["Buy some milk", "feed the cat"]
  
  def self.index 
    @@todos
  end
  
  def self.show(index)
    @@todos[index]
  end
  
  def self.create (new_todo)
    @@todos.push new_todo
  end
  
  def self.delete(index)
    @@todos.delete_at(index)
  end
  
  def self.update (index, new_todo)
    @@todos[index] = new_todo
  end
  
end
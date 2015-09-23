class Object
  macro attr_reader(*names)
    getter names
  end

  macro attr_writer(*names)
    setter names
  end

  macro attr_accessor(*names)
    property names
  end
 end

# Encapsulation class
class Document
  attr_accessor :name
  attr_reader :type

  def initialize(doc_name, type)
    # Instance variables
    @name = doc_name
    @type = type
    @size = 0
  end

  def set_name(doc_name)
    @name = doc_name
  end

  def set_type(type)
    @type = type
  end

  def show_document_type
    private_var = 'Document type is: '
    puts "#{private_var} #{@type}."
  end
end

document = Document.new('File.txt', 'Text file')
puts document.name
puts document.type
document.set_name('File_one.txt')
puts document.name
document.set_type('Word file')
puts document.type
puts document.show_document_type
p document
puts

# Get instance variables
p document.instance_variables
puts

# Get specific object methods
p document.methods - Object.methods

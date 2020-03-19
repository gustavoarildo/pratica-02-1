# This class holds data about computer users and
# files.
class Computer
    # Initialize class variables.
    @@users = {}

    # Instance variables accessors.
    attr_accessor :files

    # Initializes class an instance variables.
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end

    # Creates a virtual file identified by filename.
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} created at #{time}."
    end

    # Returns a hash with users and passwords.
    def self.users
        @@users
    end
end

require_relative ’computer’

meu_computador = Computer.new(’luiz’, 1_234)
seu_computador = Computer.new(’seu’, 56_789)

meu_computador.create(’compras.txt’)
meu_computador.create(’contas.txt’)
puts "Arquivos no meu computador: #{meu_computador.files}"

seu_computador.create(’todo.txt’)
puts "Arquivos no seu computador: #{seu_computador.files}"

puts "Usuarios: #{Computer.users}"
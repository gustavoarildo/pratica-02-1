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
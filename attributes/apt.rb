default_unless[:sys][:apt][:config] = Hash.new
default_unless[:sys][:apt][:preferences] = Hash.new
default_unless[:sys][:apt][:repositories] = Hash.new
default_unless[:sys][:apt][:sources] = String.new
default_unless[:sys][:apt][:keys] = { :add => Hash.new, :remove => Hash.new }

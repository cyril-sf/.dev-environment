# Add all gems in the global gemset to the $LOAD_PATH so they can be used even
# # in places like 'rails console'.
if defined?(::Bundler)
  global_gemset = ENV['GEM_PATH'].split(':').grep(/ruby.*@global/).first
  if global_gemset
    all_global_gem_paths = Dir.glob("#{global_gemset}/gems/*")
    all_global_gem_paths.each do |p|
      gem_path = "#{p}/lib"
      $LOAD_PATH << gem_path
    end
  end
end

# Colorize results
begin
  require 'rubygems'
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError
  puts "Error loading Wirble. Run 'gem install wirble' to enable colorized results."
end

# Pretty object formatting
begin
  require 'rubygems'
  require 'hirb'
  extend Hirb::Console
  Hirb::View.enable
rescue
  puts "Error loading Hirb. Run 'gem install hirb' to enable pretty object formatting."
end

# Use vim (or any other text editor) from inside irb to quickly test & write new code.
begin
  require 'rubygems'
  require 'interactive_editor'
rescue
  puts "Error loading Interactive Editor. Run 'gem install interactive_editor' to use vi from inside irb"
end

#!/usr/bin/ruby

def dirExists?(path)
  File.directory?(path)
end

def createDir(path)
  if !dirExists?(path)
    puts "Directory #{path} not exists, creating..."
    if system 'mkdir', path
      puts 'Done.'
      return true
    else
      puts 'Failed.'
    end
  else
    puts "Directory #{path} already exists."
  end
  return false
end

HOME = ENV['HOME']
CONFDIR = "#{HOME}/elisp"

createDir CONFDIR

RUBYDIR = "#{CONFDIR}/ruby-mode"
if createDir RUBYDIR
  puts "Getting the ruby mode..."
  system  "svn co http://svn.ruby-lang.org/repos/ruby/trunk/misc #{RUBYDIR}"
end


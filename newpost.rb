#!/usr/bin/env ruby

# *********************************************
# Jekyll Post Generator Awesomeness
# by Cody Krieger (http://codykrieger.com)
# edited by Tao Zhang (http://ztpala.com)
# *********************************************

# Usage:
# % ./newpost.rb POST NAME

if ARGV.empty? or ARGV[0].downcase == "--help" or ARGV[0].downcase == "-h"
  puts <<-USAGE

  Usage:
  % ./newpost.rb POST NAME

  USAGE

  exit (ARGV.empty? ? 1 : 0)
end

#from http://www.java2s.com/Code/Ruby/Time/Converttimetotimezone.htm
class Time
  def convert_zone(to_zone)
    original_zone = ENV["TZ"]
    utc_time = dup.gmtime
    ENV["TZ"] = to_zone
    to_zone_time = utc_time.localtime
    ENV["TZ"] = original_zone
    return to_zone_time
  end
end
class String
  
  # from ruby on rails (https://github.com/rails/rails)
  # activesupport/lib/active_support/inflector/transliterate.rb
  def parameterize(sep = '-')
    # replace accented chars with their ascii equivalents
    parameterized_string = self.dup
    # Turn unwanted chars into the separator
    parameterized_string.gsub!(/[^a-z0-9\-_]+/i, sep)
    unless sep.nil? || sep.empty?
      re_sep = Regexp.escape(sep)
      # No more than one of the separator in a row.
      parameterized_string.gsub!(/#{re_sep}{2,}/, sep)
      # Remove leading/trailing separator.
      parameterized_string.gsub!(/^#{re_sep}|#{re_sep}$/i, '')
    end
    parameterized_string.downcase
  end

end

TEMPLATE = "template.markdown"
POSTS_DIR = "_posts"

# Get the title and use it to derive the new filename
t = Time.now
t.convert_zone("US/Eastern")
title = ARGV.join(" ")
filename = "#{t.strftime('%Y-%m-%d')}-#{title.parameterize}.md" 
filepath = File.join(POSTS_DIR, filename)

# Load in the template and set the title
post_text = File.read(TEMPLATE)
post_text.gsub!('%%TITLE%%', title)
post_text.gsub!('%%DATE%%', "#{t.strftime('%Y-%m-%d %H:%M:%S')}")

# Write out the post
post_file = File.open(filepath, 'w')
post_file.puts post_text
post_file.close

system("subl #{filepath}")

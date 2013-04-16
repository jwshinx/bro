$LOAD_PATH << File.expand_path('../lib', __FILE__)

require 'document'
require 'date'

puts ""
puts "---> START <---"
puts "#{__FILE__}"
puts "#{File.dirname(__FILE__)}"
puts "---> 1     <---"

doc = Document.new 'cat in the hat', 'dr. seuss', 'a cat, a plan, panama'
puts doc
puts doc.words
puts doc.average_word_length

puts "---> 2     <---"
doc = Document.new 'hamlet', 'ws', ''
puts doc.average_word_length

puts "---> 3     <---"
class Document
 def average_word_length
  return 0.0 if words.size == 0
  len = words.inject(0.0) { |total, word| word.size + total }
  len / words.size
 end
 alias_method :avg_word_length, :average_word_length
end
doc = Document.new 'hamlet', 'ws', ''
puts doc.average_word_length
puts doc.avg_word_length

puts "---> 4     <---"
name = "   jo el    shin   "
puts name
class String
 def squish!
  strip!
  gsub!(/\s+/, '')
  self
 end
end
puts name[6]
puts name.squish!

puts "---> 5     <---"
date = Date.new 2013, 3, 22
puts date
puts date.methods.inspect
puts date.month
class Date
 def year_plus_month
  month + year
 end
 alias_method :mm, :month
end
puts date.mm
puts date.year_plus_month

puts "---> END   <---"
puts ""



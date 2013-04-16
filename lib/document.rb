class Document
 attr_accessor :title, :author, :content
 
 def initialize( title, author, content )
  @title, @author, @content =  title, author, content 
 end
 
 def words 
  @content.split(' ')
 end

 def average_word_length
  len = words.inject(0.0) { |total, word| word.size + total }
  len / words.size
 end

 def to_s
  "#{@title} : #{@author} : #{@content}"
 end
 
 #alias_method :avg_word_length, :average_word_length
end

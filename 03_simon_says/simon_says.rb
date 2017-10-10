#write your code here

#def simon_says("a")
	#gets "a"
#end

def echo(text)
	text 
end

def shout(text)
	text.upcase
end

def repeat(text,n = 2)
  [text] * n * ' '
end

def start_of_word(text,n)
	text.split(//).first(n).join
end

def first_word(text)
	text.split.first
end

def titleize(text)
	sentencef = []
	sentence = text.split
		sentencef << sentence[0].capitalize 

		sentencei = sentence.drop(1)
			sentencei.each do |word|
				if word == "and" || word == "an" || word == "the" || word == "a"  || word == "over" || word == "but" 
					sentencef << word 
				else a = word.capitalize
					sentencef << a 
				end
		end
		sentencef.join(" ")
end



	#if text = %w{a an the and but or for nor of }
	#text.split.map(&:capitalize).join(' ')

	#lowercase_words = %w{a an the and but or for nor of}
	#text.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")



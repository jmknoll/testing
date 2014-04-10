class Book
	attr_accessor :title

	def title=(str)
		small_words = ["a", "an", "the", "and", "but", "or", "in", "of"]
		a = str.split(" ")
		a.each do |i|
			i.capitalize! unless small_words.include?(i)
		end
		a[0].capitalize!
		@title = a.join(" ")
	end

end	
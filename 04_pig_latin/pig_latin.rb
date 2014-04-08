def translate(s)
	s.split("").each do |i|
		if i[0].match(/[aeiou]/)
			i.concat('ay')
		elsif i[0].match(/[q]/)
			s.concat(s[0,2]+'ay')
			s.slice(2..-1)
		elsif i[0].match(/[^aeiou]/)
			if i[1].match(/[^aeiou]/)
				if i[2].match(/[^aeiou]/)
					s.concat(s[0,3]+'ay')
					s.slice(3..-1)
				end
				s.concat(s[0,2]+'ay')
				s.slice(2..-1)
			end
			s.concat(s[1]+'ay')
			s.slice(1..-1)
		end
	end
end



#generally speaking, you want to iterate over the letters in the string until you find a vowel, 
#then work from there



require "P5_T_34/version"

module P5_T_34
   class Question
		attr_accessor :text, :right, :distractor, :value
		
		include Comparable
	
		def initialize (args)
			@text = args[:text]
			raise ArgumentError, 'Specify :text' unless @text
	
			@right = args[:right]
			raise ArgumentError, 'Specify :right' unless @right
	
			@distractor = args[:distractor]
			raise ArgumentError, 'Specify :distractor' unless @distractor
			
			@value = args[:value]
			raise ArgumentError, 'Specify :value' unless @value
		end
	
		def to_s
			#binding.pry
			options = @distractor+[@right]
			options = options.shuffle
			s = ''
			options.each do |option|
				s += %Q{->#{option}\n}
			end
			"#{@text}\n#{s}\n"
		end

		def <=>(other)
			@value <=> other.value
		end
	end
end

if __FILE__ == $0 then
	qq = Question::SimpleChoice.new(text: 'x*8=48', right: 6, distractor: [7,8,9], value: 2)
	puts qq.to_s
end
def staggered_case(string, case_arg=:down, chars=:some)
  counter = 0

  if case_arg == :down
    string.upcase.split('').map do |character|
      if character =~ /[a-z|A-Z]/
        if counter.odd?
          counter += 1
          character.downcase
        else
          counter += 1
          character
        end
      else
        chars == :all ? counter +=1 : counter += 0
        character
      end
    end.join('')
  else
    string.downcase.split('').map do |character|
      if character =~ /[a-z|A-Z]/
        if counter.odd?
          counter += 1
          character.upcase
        else
          counter += 1
          character
        end
      else
        chars == :all ? counter +=1 : counter += 0
        character
      end
    end.join('')
  end
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
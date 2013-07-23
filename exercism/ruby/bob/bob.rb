class Bob
  def hey(text)
    response = "Whatever."
    if text.nil? || (text && text.empty?)
      return response = "Fine. Be that way."
    end

    if text.upcase == text
      response = "Woah, chill out!"
    end

    if text.end_with?('?')
      response = "Sure."
    end


    response
  end
end

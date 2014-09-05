class Bob
  def hey (arg)
    @address = arg
    case
    when shouting?
      "Woah, chill out!"
    when question?
      "Sure."
    when silent?
      "Fine. Be that way!"
    else 
      "Whatever."
    end
  end

  private

  def shouting?
    return false if only_digits?
    @address == @address.upcase
  end

  def question?
    @address =~ /\?\z/
  end

  def only_digits?
    @address !~ /[a-zA-Z]/
  end

  def silent?
    @address !~ /[\w]/
  end
end


class Api::ParamerinoController < ApplicationController

  def query
    @name = params["name"].upcase
    if @name.chars[0] == "A"
      @name = "Hey, your name starts with the first letter of the alphabet!"
    else
      @name = "Your name is #{@name}"
    end
    @number = 36
    if params["guess"].to_i < @number
      @guess = "Too low."
    elsif params["guess"].to_i > @number
      @guess = "Too high."
    else
      @guess = "That's it!"  
    end
    render 'query_paramerino.json.jb'
  end

  def url_segment_method
    @name = params["name"]
    render 'segment_param.json.jb'
  end
  def url_segment_number_guess
    @number = 36
    @guess = params["guess"]
    if params["guess"].to_i < @number
      @guess = "Too low."
    elsif params["guess"].to_i > @number
      @guess = "Too high."
    else
      @guess = "That's it!"  
    end
    render 'segment_url_number_guess.json.jb'
  end
end
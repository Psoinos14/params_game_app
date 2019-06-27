class Api::ParamerinoController < ApplicationController

  def query
    @name = params["name"].upcase
    if @name.chars[0] == "A"
      puts "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'query_paramerino.json.jb'
    @number = 36
    if params["number"].to_i < 36
      puts "Too low."
    elsif params["number"].to_i > 36
      puts "Too high."
    else
      puts "That's it!"  
    end
  end
end

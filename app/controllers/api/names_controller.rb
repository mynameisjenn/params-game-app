class Api::NamesController < ApplicationController
  def show_name
  @name = params["name"].upcase
  @name_2 = params["name_2"].upcase
  render 'string.json.jbuilder'
  end

  def a_name
    @name = params["name"]
    if @name.start_with?("a")
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'a_name.json.jbuilder'
  end

  def string_guessing
    @guess = params["guess"].to_i
    answer = 42
    if @guess > answer
      @hint = "Too High. Guess higher!"
    elsif @guess < answer
      @hint = "Too Low. Guess lower!"
    else
      @hint = "You guessed right!"
    end
    render 'string_guessing.json.jbuilder'
  end

  def guess_wildcard
    @guess = params["guess"].to_i
    answer = 42
    if @guess > answer
      @hint = "Too High. Guess higher!"
    elsif @guess < answer
      @hint = "Too Low. Guess lower!"
    else
      @hint = "You guessed right!"
    end
    render 'guess_wildcard.json.jbuilder'
  end
end

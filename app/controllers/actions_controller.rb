class ActionsController < ApplicationController
  def new
    @letters = (0...10).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def score
    letters = params[:letters]
    proposition = params[:proposition]
  end

  def english_word?(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    dictionary = open(url).read
    read = JSON.parse(dictionary)
    read['found']
  end

  def anagram(letters, proposition)
  end

end

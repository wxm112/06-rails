class PagesController < ApplicationController
  def home
  end

  def numbers
    @amount = 234.456789
    @large_number = 12345
    @phone = 3836392749
  end

  def text
    @numbers = (1..20).to_a
    @person_count_a = 1
    @person_count_b = 2
    @story = "A very long long long long long long long long long time ago in a galaxy far far far away"
  end

  def assets
  end

  def url
  end

end

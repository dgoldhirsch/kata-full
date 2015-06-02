class DummyController < ApplicationController
  def index
    puts "DUMMY!"
    byebug
  end
end

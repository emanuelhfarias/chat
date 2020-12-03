class Talent::ApplicationController < ApplicationController
  def current_user
    Talent.last
  end
end

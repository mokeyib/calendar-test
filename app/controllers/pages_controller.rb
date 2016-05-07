class PagesController < ApplicationController
  def calendar
    @calendar_src = Calendar.new.url
  end
end

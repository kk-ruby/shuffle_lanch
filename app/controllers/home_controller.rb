class HomeController < ApplicationController
  def top
    @shuffle = Emplo.all
  end

  def shuffle
    @group1 = Emplo.where(section: "事務").count.to_i

    for num in range1 do
      p num[] <<
    end

  end




end

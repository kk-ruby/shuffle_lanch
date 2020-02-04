class HomeController < ApplicationController
  def top
    @shuffle = Emplo.all
  end

  def shuffle
    @group1 = Emplo.where(section: "製造").sort_by{rand}
    @n = Emplo.where(section: "製造").count.to_i
    @n2 = 0

    if (@n % 3) == 0
      @n2 = (@n / 3)
    else
      @n2 = (@n / 3) + 1
    end

    @aaa = Array.new()
    numnum = 0 

    @group1.each do |f|
     @aaa[numnum] = f.name
     numnum += 1
    end

    @group2 = Emplo.where(section: "事務").sort_by{rand}
    @m = Emplo.where(section: "事務").count.to_i
    @m2 = 0

    if (@m % 3) == 0
      @m2 = (@m / 3)
    else
      @m2 = (@m / 3) + 1
    end

    @bbb = Array.new()
    numnum2 = 0 

    @group2.each do |f|
     @bbb[numnum2] = f.name
     numnum2 += 1
    end

  end
end

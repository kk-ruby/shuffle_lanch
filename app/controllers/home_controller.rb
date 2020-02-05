class HomeController < ApplicationController
  def top
    @shuffle = Emplo.all
  end

  def shuffle
    @seizou = Emplo.where(section: "製造")

    range = (1..@group1 = Emplo.where(section: "製造").count.to_i).to_a

    #配列作成
    @a = []
    range.map do |i|
      @a << i
    end

    @a.shuffle!
    n = 0
    
    #ランダムで取り出してカラムに保存
    @seizou.each do |f|
      f.next = @a[n]
      f.last = @a[n]
      n += 1
    end



  end




end

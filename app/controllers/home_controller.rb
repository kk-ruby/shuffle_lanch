class HomeController < ApplicationController
  def top
    @shuffle = Emplo.all
  end

  def shuffle
    #レコード詰
    @seizou = Emplo.where(section: "製造")
    @jimu = Emplo.where(section: "事務")

    #配列用レンジオブジェクト作成
    range1 = (1..group1 = Emplo.where(section: "製造").count.to_i).to_a
    range2 = (1..group2 = Emplo.where(section: "事務").count.to_i).to_a

    #カラム数の配列作成
    a = []
    range1.map do |i|
      a << i
    end

    #配列混ぜ混ぜ
    a.shuffle!

    #配列取り出し用変数初期化
    i = 0
    #ランダムで取り出してカラムに保存
    @seizou.each do |f|
      f.next = a[i]
      i += 1
    end

    
  end




end

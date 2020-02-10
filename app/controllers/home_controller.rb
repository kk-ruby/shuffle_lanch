class HomeController < ApplicationController
  def top
    @seizou = Emplo.where(section: "製造")
    @jimu = Emplo.where(section: "事務")
  end

  def shuffle
    #paramsチェック
    @button = params[:id]
    #レコード詰
    @shuffle = Emplo.all
    @seizou = Emplo.where(section: "製造")
    @jimu = Emplo.where(section: "事務")
    
    if @button != "Fixed"
      #シャッフルされた1..nの配列を作成
      range1 = (1..group1 = Emplo.where(section: "製造").count.to_i).to_a.shuffle!
      range2 = (1..group2 = Emplo.where(section: "事務").count.to_i).to_a.shuffle!
    else
      #グループ確定時の動作
      @seizou.each do |f|
        f.last = f.next
        f.save
      end

      @jimu.each do |f|
        f.last = f.next
        f.save
      end
      flash[:notice] = "グループが確定しました"
    end

    #製造のグループ分け
    i = 0  
    @seizou.each do |f|
      #再抽選の時はセーブしない
      if @button != "Fixed"
        f.next = (range1[i] % 3)
        f.save
        i += 1
      end
    end
    
    #事務のグループ分け
    i = 0
    @jimu.each do |f|
      #再抽選の時はセーブしない
      if @button != "Fixed"
      f.next = (range2[i] % 3)
      f.save
      i += 1
      end
    end
  end

  def shuffleafter
    @shuffle = Emplo.all
  end
  
end
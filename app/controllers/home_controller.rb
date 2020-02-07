class HomeController < ApplicationController
  def top
    @seizou = Emplo.where(section: "製造")
    @jimu = Emplo.where(section: "事務")

  end

  def shuffle
    @button = params[:id]
    #レコード詰
    @seizou = Emplo.where(section: "製造")
    @jimu = Emplo.where(section: "事務")
    
    #配列用レンジオブジェクト作成
    
    #製造のカラムに保存
    @g1 = []
    @g2 = []
    @g3 = []
    
    if @button != "Fixed"
    range1 = (1..group1 = Emplo.where(section: "製造").count.to_i).to_a.shuffle!
    range2 = (1..group2 = Emplo.where(section: "事務").count.to_i).to_a.shuffle!

    else
      @seizou.each do |f|
        f.last = f.next
        f.save
    end
  
      @jimu.each do |f|
        f.last = f.next
        f.save
      end
      flash[:success] = "グループが確定しました"
    end

      
    i = 0  
    @seizou.each do |f|
      if @button != "Fixed"
        f.next = range1[i]
        f.save
      end      
      i += 1

        case f.next % 3
          when 0 
            @g1 << f
          when 1
            @g2 << f
          when 2
            @g3 << f
      end
    end
    
    i = 0
    #事務のカラムに保存 
    @jimu.each do |f|
      if @button != "Fixed"
      f.next = range2[i]
      f.save
      end
      i += 1
      case f.next % 3
        when 0 
          @g1 << f
        when 1
          @g2 << f
        when 2
          @g3 << f
      end
    end
    
  end

end
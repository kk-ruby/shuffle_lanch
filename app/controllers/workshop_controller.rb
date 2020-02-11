class WorkshopController < ApplicationController
  def shuffle
    @button = params[:id]
    @seizou = Emplo.where(section: "製造")
    @jimu = Emplo.where(section: "事務")

    if @button != "Fixed"
      range = (1..group2 = Emplo.where(section: "事務").count.to_i).to_a.shuffle!
    else
      @jimu.each do |f|
        f.k_last = f.k_next
        f.save
      end
      flash[:notice] = "グループが確定しました"
    end

    i = 0
    @jimu.each do |f|
      if @button != "Fixed"
      f.k_next = (range[i] % 2)
      f.save
      i += 1
      end
    end

  def shuffleafter
    @shuffle = Emplo.all
  end

  end
end

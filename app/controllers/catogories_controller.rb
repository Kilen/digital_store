class CatogoriesController < ApplicationController
  #before_filter in application: get_all_catogories

  # GET /catogories
  # GET /catogories.json
  def index
    @slider = Catogory.find_by_name("幻灯片")
    @slider = @slider ? @slider.image : []
  end

  # GET /catogories/1
  # GET /catogories/1.json
  def show
    @catogory = Catogory.find(params[:id])
  end

  # GET /catogories/new
  # GET /catogories/new.json
  def new
    @catogory = Catogory.new
  end

  # GET /catogories/1/edit
  def edit
    @catogory = Catogory.find(params[:id])
  end

  # POST /catogories
  # POST /catogories.json
  def create
    @catogory = Catogory.new(params[:catogory])
    if @catogory.save
      flash[:success] = "目录创建成功!"
      redirect_to(@catogory)
    else
      render(:action=>"new")
    end
  end

  # PUT /catogories/1
  # PUT /catogories/1.json
  def update
    @catogory = Catogory.find(params[:id])

    if @catogory.update_attributes(params[:catogory])
      flash[:success] = "目录更新成功!"
      redirect_to(@catogory)
    else
      render(:action=>"edit")
    end
  end

  # DELETE /catogories/1
  # DELETE /catogories/1.json
  def destroy
    @catogory = Catogory.find(params[:id])
    @catogory.destroy
    flash[:info] = "成功删除目录"
    redirect_to catogories_url
  end
end

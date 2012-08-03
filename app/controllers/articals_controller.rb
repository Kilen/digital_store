class ArticalsController < ApplicationController

  # GET /articals/1
  # GET /articals/1.json
  def show
    @artical = Artical.find(params[:id])
  end

  # GET /articals/new
  # GET /articals/new.json
  def new
    @catogory = Catogory.find_by_id(params[:catogory_id])
    if @catogory
      @artical = Artical.new
    else
      redirect_back()
    end
  end

  # GET /articals/1/edit
  def edit
    @catogory = Catogory.find_by_id(params[:catogory_id])
    if @catogory
      @artical = Artical.find(params[:id])
    else
      redirect_back()
    end
  end

  # POST /articals
  # POST /articals.json
  def create
    @artical = Artical.new(params[:artical])

    if @artical.save
      redirect_to(@artical)
    else
      render(:action => "new")
    end
  end

  # PUT /articals/1
  # PUT /articals/1.json
  def update
    @artical = Artical.find(params[:id])

    if @artical.update_attributes(params[:artical])
      redirect_to(@artical)
    else
      render(:action => "edit")
    end
  end

  # DELETE /articals/1
  # DELETE /articals/1.json
  def destroy
    @artical = Artical.find(params[:id])
    @artical.destroy
    redirect_back()
  end
end

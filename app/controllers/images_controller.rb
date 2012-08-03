# -*- coding: utf-8 -*-
class ImagesController < ApplicationController
  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @catogory = Catogory.find_by_id(params[:catogory_id])
    if @catogory
      @image = Image.new
    else
      flash[:error] = "没有找到对应的目录, 不能操作图片, 请重试"
      redirect_back()
    end
  end

  # GET /images/1/edit
  def edit
    @catogory = Catogory.find_by_id(params[:catogory_id])
    if @catogory
      @image = Image.find(params[:id])
    else
      flash[:error] = "没有找到对应的目录, 不能操作图片, 请重试"
      redirect_back()
    end
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(params[:image])
    if @image.save
      flash[:success] = "图片成功上传!"
      redirect_to(@image)
    else
      flash[:error] = "图片上传失败! 请重试"
      render(:action => "new")
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = Image.find(params[:id])

    if @image.update_attributes(params[:image])
      flash[:success] = "图片更新成功!"
      redirect_to(@image)
    else
      flash[:error] = "图片更新失败! 请重试"
      render(:action => "edit")
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    flash[:info] = "图片已被删除"
    redirect_back()
  end

end

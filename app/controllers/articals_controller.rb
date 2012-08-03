# -*- coding: utf-8 -*-
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
      flash[:error] = "没有找到对应的目录, 不能操作文章, 请重试"
      redirect_back()
    end
  end

  # GET /articals/1/edit
  def edit
    @catogory = Catogory.find_by_id(params[:catogory_id])
    if @catogory
      @artical = Artical.find(params[:id])
    else
      flash[:error] = "没有找到对应的目录, 不能操作文章, 请重试"
      redirect_back()
    end
  end

  # POST /articals
  # POST /articals.json
  def create
    @artical = Artical.new(params[:artical])

    if @artical.save
      flash[:success] = "文章创建成功!"
      redirect_to(@artical)
    else
      flash[:error] = "文章创建失败! 请重试"
      render(:action => "new")
    end
  end

  # PUT /articals/1
  # PUT /articals/1.json
  def update
    @artical = Artical.find(params[:id])

    if @artical.update_attributes(params[:artical])
      flash[:success] = "文章更新成功!"
      redirect_to(@artical)
    else
      flash[:error] = "文章更新失败! 请重试"
      render(:action => "edit")
    end
  end

  # DELETE /articals/1
  # DELETE /articals/1.json
  def destroy
    @artical = Artical.find(params[:id])
    @artical.destroy
    flash[:info] = "文章已被删除"
    redirect_back()
  end
end

class DiariesController < ApplicationController
  # GET /diaries
  # GET /diaries.json
  before_filter :authenticate_user!
  def index
    @diaries = current_user.diaries

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diaries }
    end
  end

  # GET /diaries/1
  # GET /diaries/1.json
  def show
    @diary = current_user.diaries.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diary }
    end
  end

  # GET /diaries/new
  # GET /diaries/new.json
  def new
    @diary = current_user.diaries.build if current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diary }
    end
  end

  # GET /diaries/1/edit
  def edit
    @diary = Diary.find(params[:id])
  end

  # POST /diaries
  # POST /diaries.json
  def create
    @diary = current_user.diaries.build(params[:diary]) if current_user

    respond_to do |format|
      if @diary.save
        format.html { redirect_to @diary, notice: 'Diary was successfully created.' }
        format.json { render json: @diary, status: :created, location: @diary }
      else
        format.html { render action: "new" }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diaries/1
  # PUT /diaries/1.json
  def update
    @diary = current_user.diaries.find(params[:id])

    respond_to do |format|
      if @diary.update_attributes(params[:diary])
        format.html { redirect_to @diary, notice: 'Diary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaries/1
  # DELETE /diaries/1.json
  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy

    respond_to do |format|
      format.html { redirect_to diaries_url }
      format.json { head :no_content }
    end
  end
end

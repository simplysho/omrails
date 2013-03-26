class GramsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]   #method devise gave us to authenticate user


  # GET /grams
  # GET /grams.json
  def index
    @grams = Gram.all #if we wanted to make an app so that user can only see their own pin make = current_user.pins.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grams }
    end
  end

  # GET /grams/1
  # GET /grams/1.json
  def show
    @gram = Gram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gram }
    end
  end

  # GET /grams/new
  # GET /grams/new.json
  def new
    @gram = current_user.grams.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gram }
    end
  end

  # GET /grams/1/edit
  def edit
    @gram = current_user.grams.find(params[:id])
  end

  # POST /grams
  # POST /grams.json
  def create
    @gram = current_user.grams.new(params[:gram])

    respond_to do |format|
      if @gram.save
        format.html { redirect_to @gram, notice: 'Gram was successfully created.' }
        format.json { render json: @gram, status: :created, location: @gram }
      else
        format.html { render action: "new" }
        format.json { render json: @gram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grams/1
  # PUT /grams/1.json
  def update
    @gram = current_user.grams.find(params[:id])

    respond_to do |format|
      if @gram.update_attributes(params[:gram])
        format.html { redirect_to @gram, notice: 'Gram was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grams/1
  # DELETE /grams/1.json
  def destroy
    @gram = current_user.grams.find(params[:id])
    @gram.destroy

    respond_to do |format|
      format.html { redirect_to grams_url }
      format.json { head :no_content }
    end
  end
end

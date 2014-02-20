class WelcomeController < ApplicationController

   # GET /author
  # GET /author.json
  def index
    @authors = Author.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @authors }
    end
  end

  # GET /author/1
  # GET /author/1.json
  def show
    @author = Author.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @author }
    end
  end

  # GET /author/new
  # GET /author/new.json
  def new
    @author = Author.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @author }
    end
  end

  # GET /author/1/edit
  def edit
    @author = Author.find(params[:id])
  end

  # POST /author
  # POST /author.json
  def create
    @author = Author.new(params[:author])

    respond_to do |format|
      if @author.save
    UserMailer.welcome(@author).deliver

        format.html { redirect_to @author, notice: 'author was successfully created.' }
        format.json { render json: @author, status: :created, location: @author }
      else
        format.html { render action: "new" }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /author/1
  # PUT /author/1.json
  def update
    @author = Author.find(params[:id])

    respond_to do |format|
      if @author.save
        format.html { redirect_to @author, notice: 'author was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author/1
  # DELETE /author/1.json
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end

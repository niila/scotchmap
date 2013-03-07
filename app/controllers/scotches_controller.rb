class ScotchesController < ApplicationController
  def self.scotchmap_name
    ENV['SCOTCHMAP_NAME'] || "dev-name"
  end

  def self.scotchmap_password
    ENV['SCOTCHMAP_PASSWORD'] || "dev-password"
  end

  http_basic_authenticate_with(
    name: scotchmap_name,
    password: scotchmap_password,
    except: ['index', 'show']
  )

  # GET /scotches
  # GET /scotches.json
  def index
    @scotches = Scotch.all
    @pins = @scotches.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scotches }
    end
  end

  # GET /scotches/1
  # GET /scotches/1.json
  def show
    @scotch = Scotch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scotch }
    end
  end

  # GET /scotches/new
  # GET /scotches/new.json
  def new
    @scotch = Scotch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scotch }
    end
  end

  # GET /scotches/1/edit
  def edit
    @scotch = Scotch.find(params[:id])
  end

  # POST /scotches
  # POST /scotches.json
  def create
    @scotch = Scotch.new(params[:scotch])

    respond_to do |format|
      if @scotch.save
        format.html { redirect_to @scotch, notice: 'Scotch was successfully created.' }
        format.json { render json: @scotch, status: :created, location: @scotch }
      else
        format.html { render action: "new" }
        format.json { render json: @scotch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scotches/1
  # PUT /scotches/1.json
  def update
    @scotch = Scotch.find(params[:id])

    respond_to do |format|
      if @scotch.update_attributes(params[:scotch])
        format.html { redirect_to @scotch, notice: 'Scotch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scotch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scotches/1
  # DELETE /scotches/1.json
  def destroy
    @scotch = Scotch.find(params[:id])
    @scotch.destroy

    respond_to do |format|
      format.html { redirect_to scotches_url }
      format.json { head :no_content }
    end
  end
end

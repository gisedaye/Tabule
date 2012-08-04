class PlatosController < ApplicationController
  # GET /platos
  # GET /platos.json
  def index
    @platos = Plato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @platos }
    end
  end

  # GET /platos/1
  # GET /platos/1.json
  def show
    @plato = Plato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plato }
    end
  end

  # GET /platos/new
  # GET /platos/new.json
  def new
    @plato = Plato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plato }
    end
  end

  # GET /platos/1/edit
  def edit
    @plato = Plato.find(params[:id])
  end

  # POST /platos
  # POST /platos.json
  def create
    @plato = Plato.new(params[:plato])

    respond_to do |format|
      if @plato.save
        format.html { redirect_to @plato, notice: 'Plato was successfully created.' }
        format.json { render json: @plato, status: :created, location: @plato }
      else
        format.html { render action: "new" }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /platos/1
  # PUT /platos/1.json
  def update
    @plato = Plato.find(params[:id])

    respond_to do |format|
      if @plato.update_attributes(params[:plato])
        format.html { redirect_to @plato, notice: 'Plato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platos/1
  # DELETE /platos/1.json
  def destroy
    @plato = Plato.find(params[:id])
    @plato.destroy

    respond_to do |format|
      format.html { redirect_to platos_url }
      format.json { head :no_content }
    end
  end
end

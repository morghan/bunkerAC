class PersonajeBlazBluesController < ApplicationController
  # GET /personaje_blaz_blues
  # GET /personaje_blaz_blues.xml
  def index
    @personaje_blaz_blues = PersonajeBlazBlue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personaje_blaz_blues }
    end
  end

  # GET /personaje_blaz_blues/1
  # GET /personaje_blaz_blues/1.xml
  def show
    @personaje_blaz_blue = PersonajeBlazBlue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personaje_blaz_blue }
    end
  end

  # GET /personaje_blaz_blues/new
  # GET /personaje_blaz_blues/new.xml
  def new
    @personaje_blaz_blue = PersonajeBlazBlue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personaje_blaz_blue }
    end
  end

  # GET /personaje_blaz_blues/1/edit
  def edit
    @personaje_blaz_blue = PersonajeBlazBlue.find(params[:id])
  end

  # POST /personaje_blaz_blues
  # POST /personaje_blaz_blues.xml
  def create
    if autenticacion == "admin"
    @personaje_blaz_blue = PersonajeBlazBlue.new(params[:personaje_blaz_blue])

    respond_to do |format|
      if @personaje_blaz_blue.save
        format.html { redirect_to(@personaje_blaz_blue, :notice => 'Personaje blaz blue was successfully created.') }
        format.xml  { render :xml => @personaje_blaz_blue, :status => :created, :location => @personaje_blaz_blue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personaje_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /personaje_blaz_blues/1
  # PUT /personaje_blaz_blues/1.xml
  def update
    if autenticacion == "admin"
    @personaje_blaz_blue = PersonajeBlazBlue.find(params[:id])

    respond_to do |format|
      if @personaje_blaz_blue.update_attributes(params[:personaje_blaz_blue])
        format.html { redirect_to(@personaje_blaz_blue, :notice => 'Personaje blaz blue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personaje_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /personaje_blaz_blues/1
  # DELETE /personaje_blaz_blues/1.xml
  def destroy
    if autenticacion == "admin"
    @personaje_blaz_blue = PersonajeBlazBlue.find(params[:id])
    @personaje_blaz_blue.destroy

    respond_to do |format|
      format.html { redirect_to(personaje_blaz_blues_url) }
      format.xml  { head :ok }
    end
    end
  end
end

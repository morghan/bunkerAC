class PersonajeGuiltiesController < ApplicationController
  # GET /personaje_guilties
  # GET /personaje_guilties.xml
  def index
    @personaje_guilties = PersonajeGuilty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personaje_guilties }
    end
  end

  # GET /personaje_guilties/1
  # GET /personaje_guilties/1.xml
  def show
    @personaje_guilty = PersonajeGuilty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personaje_guilty }
    end
  end

  # GET /personaje_guilties/new
  # GET /personaje_guilties/new.xml
  def new
    @personaje_guilty = PersonajeGuilty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personaje_guilty }
    end
  end

  # GET /personaje_guilties/1/edit
  def edit
    @personaje_guilty = PersonajeGuilty.find(params[:id])
  end

  # POST /personaje_guilties
  # POST /personaje_guilties.xml
  def create
    if autenticacion == "admin"
    @personaje_guilty = PersonajeGuilty.new(params[:personaje_guilty])

    respond_to do |format|
      if @personaje_guilty.save
        format.html { redirect_to(@personaje_guilty, :notice => 'Personaje guilty was successfully created.') }
        format.xml  { render :xml => @personaje_guilty, :status => :created, :location => @personaje_guilty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personaje_guilty.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /personaje_guilties/1
  # PUT /personaje_guilties/1.xml
  def update
    if autenticacion == "admin"
    @personaje_guilty = PersonajeGuilty.find(params[:id])

    respond_to do |format|
      if @personaje_guilty.update_attributes(params[:personaje_guilty])
        format.html { redirect_to(@personaje_guilty, :notice => 'Personaje guilty was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personaje_guilty.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /personaje_guilties/1
  # DELETE /personaje_guilties/1.xml
  def destroy
    if autenticacion == "admin"
    @personaje_guilty = PersonajeGuilty.find(params[:id])
    @personaje_guilty.destroy

    respond_to do |format|
      format.html { redirect_to(personaje_guilties_url) }
      format.xml  { head :ok }
    end
    end
  end
end

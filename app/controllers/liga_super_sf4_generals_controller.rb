class LigaSuperSf4GeneralsController < ApplicationController
  # GET /liga_super_sf4_generals
  # GET /liga_super_sf4_generals.xml
  def index
    @liga_super_sf4_generals = LigaSuperSf4General.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_super_sf4_generals }
    end
  end

  # GET /liga_super_sf4_generals/1
  # GET /liga_super_sf4_generals/1.xml
  def show
    @liga_super_sf4_general = LigaSuperSf4General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_super_sf4_general }
    end
  end

  # GET /liga_super_sf4_generals/new
  # GET /liga_super_sf4_generals/new.xml
  def new
    @liga_super_sf4_general = LigaSuperSf4General.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_super_sf4_general }
    end
  end

  # GET /liga_super_sf4_generals/1/edit
  def edit
    @liga_super_sf4_general = LigaSuperSf4General.find(params[:id])
  end

  # POST /liga_super_sf4_generals
  # POST /liga_super_sf4_generals.xml
  def create
    @liga_super_sf4_general = LigaSuperSf4General.new(params[:liga_super_sf4_general])

    respond_to do |format|
      if LigaSuperSf4General.where(:cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_super_sf4_general.cuenta=getUsuarioActual.id_cuenta
        @liga_super_sf4_general.puntos=500
        if @liga_super_sf4_general.save
          format.html { redirect_to(@liga_super_sf4_general, :notice => 'Liga super sf4 general was successfully created.') }
          format.xml  { render :xml => @liga_super_sf4_general, :status => :created, :location => @liga_super_sf4_general }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_super_sf4_general.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /liga_super_sf4_generals/1
  # PUT /liga_super_sf4_generals/1.xml
  def update
    @liga_super_sf4_general = LigaSuperSf4General.find(params[:id])

    respond_to do |format|
      if @liga_super_sf4_general.update_attributes(params[:liga_super_sf4_general])
        format.html { redirect_to(@liga_super_sf4_general, :notice => 'Liga super sf4 general was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_super_sf4_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_super_sf4_generals/1
  # DELETE /liga_super_sf4_generals/1.xml
  def destroy
    @liga_super_sf4_general = LigaSuperSf4General.find(params[:id])
    @liga_super_sf4_general.destroy

    respond_to do |format|
      format.html { redirect_to(liga_super_sf4_generals_url) }
      format.xml  { head :ok }
    end
  end
end

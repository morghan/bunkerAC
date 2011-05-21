class LigaBlazBlueGeneralsController < ApplicationController
  # GET /liga_blaz_blue_generals
  # GET /liga_blaz_blue_generals.xml
  def index
    @liga_blaz_blue_generals = LigaBlazBlueGeneral.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_blaz_blue_generals }
    end
  end

  # GET /liga_blaz_blue_generals/1
  # GET /liga_blaz_blue_generals/1.xml
  def show
    @liga_blaz_blue_general = LigaBlazBlueGeneral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_blaz_blue_general }
    end
  end

  # GET /liga_blaz_blue_generals/new
  # GET /liga_blaz_blue_generals/new.xml
  def new
    @liga_blaz_blue_general = LigaBlazBlueGeneral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_blaz_blue_general }
    end
  end

  # GET /liga_blaz_blue_generals/1/edit
  def edit
    @liga_blaz_blue_general = LigaBlazBlueGeneral.find(params[:id])
  end

  # POST /liga_blaz_blue_generals
  # POST /liga_blaz_blue_generals.xml
  def create
    @liga_blaz_blue_general = LigaBlazBlueGeneral.new(params[:liga_blaz_blue_general])

    respond_to do |format|
      if LigaBlazBlueGeneral.where(:cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_blaz_blue_general.cuenta=getUsuarioActual.id_cuenta
        @liga_blaz_blue_general.puntos=500
        if @liga_blaz_blue_general.save
          format.html { redirect_to(@liga_blaz_blue_general, :notice => 'Liga blaz blue general was successfully created.') }
          format.xml  { render :xml => @liga_blaz_blue_general, :status => :created, :location => @liga_blaz_blue_general }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_blaz_blue_general.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /liga_blaz_blue_generals/1
  # PUT /liga_blaz_blue_generals/1.xml
  def update
    @liga_blaz_blue_general = LigaBlazBlueGeneral.find(params[:id])

    respond_to do |format|
      if @liga_blaz_blue_general.update_attributes(params[:liga_blaz_blue_general])
        format.html { redirect_to(@liga_blaz_blue_general, :notice => 'Liga blaz blue general was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_blaz_blue_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_blaz_blue_generals/1
  # DELETE /liga_blaz_blue_generals/1.xml
  def destroy
    @liga_blaz_blue_general = LigaBlazBlueGeneral.find(params[:id])
    @liga_blaz_blue_general.destroy

    respond_to do |format|
      format.html { redirect_to(liga_blaz_blue_generals_url) }
      format.xml  { head :ok }
    end
  end
end

class LigaBlazBluesController < ApplicationController
  # GET /liga_blaz_blues
  # GET /liga_blaz_blues.xml
  def index
    @liga_blaz_blues = LigaBlazBlue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_blaz_blues }
    end
  end

  # GET /liga_blaz_blues/1
  # GET /liga_blaz_blues/1.xml
  def show
    @liga_blaz_blue = LigaBlazBlue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_blaz_blue }
    end
  end

  # GET /liga_blaz_blues/new
  # GET /liga_blaz_blues/new.xml
  def new
    @liga_blaz_blue = LigaBlazBlue.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_blaz_blue }
    end
  end

  # GET /liga_blaz_blues/1/edit
  def edit
    @liga_blaz_blue = LigaBlazBlue.find(params[:id])
  end

  # POST /liga_blaz_blues
  # POST /liga_blaz_blues.xml
  def create
    @liga_blaz_blue = LigaBlazBlue.new(params[:liga_blaz_blue])
    respond_to do |format|
      if LigaBlazBlue.where(:id_cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_blaz_blue.id_cuenta=getUsuarioActual.id_cuenta
        @liga_blaz_blue.puntos=500
        if @liga_blaz_blue.save
          format.html { redirect_to(@liga_blaz_blue, :notice => 'Liga blaz blue was successfully created.') }
          format.xml  { render :xml => @liga_blaz_blue, :status => :created, :location => @liga_blaz_blue }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_blaz_blue.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@liga_blaz_blue, :notice => 'Error: Ya estas inscrito en la liga.') }
        format.xml  { render :xml => @liga_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /liga_blaz_blues/1
  # PUT /liga_blaz_blues/1.xml
  def update
    @liga_blaz_blue = LigaBlazBlue.find(params[:id])

    respond_to do |format|
      if @liga_blaz_blue.update_attributes(params[:liga_blaz_blue])
        format.html { redirect_to(@liga_blaz_blue, :notice => 'Liga blaz blue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_blaz_blues/1
  # DELETE /liga_blaz_blues/1.xml
  def destroy
    @liga_blaz_blue = LigaBlazBlue.find(params[:id])
    @liga_blaz_blue.destroy

    respond_to do |format|
      format.html { redirect_to(liga_blaz_blues_url) }
      format.xml  { head :ok }
    end
  end
end

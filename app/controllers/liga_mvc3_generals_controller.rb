class LigaMvc3GeneralsController < ApplicationController
  # GET /liga_mvc3_generals
  # GET /liga_mvc3_generals.xml
  def index
    @liga_mvc3_generals = LigaMvc3General.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_mvc3_generals }
    end
  end

  # GET /liga_mvc3_generals/1
  # GET /liga_mvc3_generals/1.xml
  def show
    @liga_mvc3_general = LigaMvc3General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_mvc3_general }
    end
  end

  # GET /liga_mvc3_generals/new
  # GET /liga_mvc3_generals/new.xml
  def new
    @liga_mvc3_general = LigaMvc3General.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_mvc3_general }
    end
  end

  # GET /liga_mvc3_generals/1/edit
  def edit
    @liga_mvc3_general = LigaMvc3General.find(params[:id])
  end

  # POST /liga_mvc3_generals
  # POST /liga_mvc3_generals.xml
  def create
    @liga_mvc3_general = LigaMvc3General.new(params[:liga_mvc3_general])

    respond_to do |format|
      if LigaMvc3General.where(:cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_mvc3_general.cuenta=getUsuarioActual.id_cuenta
        @liga_mvc3_general.puntos=500
        if @liga_mvc3_general.save
          format.html { redirect_to(@liga_mvc3_general, :notice => 'Liga mvc3 general was successfully created.') }
          format.xml  { render :xml => @liga_mvc3_general, :status => :created, :location => @liga_mvc3_general }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_mvc3_general.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /liga_mvc3_generals/1
  # PUT /liga_mvc3_generals/1.xml
  def update
    @liga_mvc3_general = LigaMvc3General.find(params[:id])

    respond_to do |format|
      if @liga_mvc3_general.update_attributes(params[:liga_mvc3_general])
        format.html { redirect_to(@liga_mvc3_general, :notice => 'Liga mvc3 general was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_mvc3_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_mvc3_generals/1
  # DELETE /liga_mvc3_generals/1.xml
  def destroy
    @liga_mvc3_general = LigaMvc3General.find(params[:id])
    @liga_mvc3_general.destroy

    respond_to do |format|
      format.html { redirect_to(liga_mvc3_generals_url) }
      format.xml  { head :ok }
    end
  end
end

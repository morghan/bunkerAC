class LigaSf4sController < ApplicationController
  # GET /liga_sf4s
  # GET /liga_sf4s.xml
  def index
    @liga_sf4s = LigaSf4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_sf4s }
    end
  end

  # GET /liga_sf4s/1
  # GET /liga_sf4s/1.xml
  def show
    @liga_sf4 = LigaSf4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_sf4 }
    end
  end

  # GET /liga_sf4s/new
  # GET /liga_sf4s/new.xml
  def new
    @liga_sf4 = LigaSf4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_sf4 }
    end
  end

  # GET /liga_sf4s/1/edit
  def edit
    @liga_sf4 = LigaSf4.find(params[:id])
  end

  # POST /liga_sf4s
  # POST /liga_sf4s.xml
  def create
    @liga_sf4 = LigaSf4.new(params[:liga_sf4])
    respond_to do |format|
      if LigaSf4.where(:id_cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_sf4.id_cuenta=getUsuarioActual.id_cuenta
        @liga_sf4.puntos=500
        if @liga_sf4.save
          format.html { redirect_to(@liga_sf4, :notice => 'Liga sf4 was successfully created.') }
          format.xml  { render :xml => @liga_sf4, :status => :created, :location => @liga_sf4 }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_sf4.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@liga_sf4, :notice => 'Error: Ya estas inscrito en la liga.') }
        format.xml  { render :xml => @liga_sf4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /liga_sf4s/1
  # PUT /liga_sf4s/1.xml
  def update
    @liga_sf4 = LigaSf4.find(params[:id])

    respond_to do |format|
      if @liga_sf4.update_attributes(params[:liga_sf4])
        format.html { redirect_to(@liga_sf4, :notice => 'Liga sf4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_sf4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_sf4s/1
  # DELETE /liga_sf4s/1.xml
  def destroy
    @liga_sf4 = LigaSf4.find(params[:id])
    @liga_sf4.destroy

    respond_to do |format|
      format.html { redirect_to(liga_sf4s_url) }
      format.xml  { head :ok }
    end
  end
end

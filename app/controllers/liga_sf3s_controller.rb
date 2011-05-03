class LigaSf3sController < ApplicationController
  # GET /liga_sf3s
  # GET /liga_sf3s.xml

  def index
    @liga_sf3s = LigaSf3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_sf3s }
    end
  end

  # GET /liga_sf3s/1
  # GET /liga_sf3s/1.xml
  def show
    @liga_sf3 = LigaSf3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_sf3 }
    end
  end

  # GET /liga_sf3s/new
  # GET /liga_sf3s/new.xml
  def new
    @liga_sf3 = LigaSf3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_sf3 }
    end
  end

  # GET /liga_sf3s/1/edit
  def edit
    @liga_sf3 = LigaSf3.find(params[:id])
  end

  # POST /liga_sf3s
  # POST /liga_sf3s.xml
  def create
    @liga_sf3 = LigaSf3.new(params[:liga_sf3])

    respond_to do |format|
      if LigaSf3.where(:id_cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_sf3.id_cuenta=getUsuarioActual.id_cuenta
        @liga_sf3.puntos=500
        if @liga_sf3.save
          format.html { redirect_to(@liga_sf3, :notice => 'Liga sf3 was successfully created.') }
          format.xml  { render :xml => @liga_sf3, :status => :created, :location => @liga_sf3 }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_sf3.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@liga_sf3, :notice => 'Error: Ya estas inscrito en la liga.') }
        format.xml  { render :xml => @liga_sf3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /liga_sf3s/1
  # PUT /liga_sf3s/1.xml
  def update
    @liga_sf3 = LigaSf3.find(params[:id])

    respond_to do |format|
      if @liga_sf3.update_attributes(params[:liga_sf3])
        format.html { redirect_to(@liga_sf3, :notice => 'Liga sf3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_sf3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_sf3s/1
  # DELETE /liga_sf3s/1.xml
  def destroy
    @liga_sf3 = LigaSf3.find(params[:id])
    @liga_sf3.destroy

    respond_to do |format|
      format.html { redirect_to(liga_sf3s_url) }
      format.xml  { head :ok }
    end
  end
end

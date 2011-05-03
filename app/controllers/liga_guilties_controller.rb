class LigaGuiltiesController < ApplicationController
  # GET /liga_guilties
  # GET /liga_guilties.xml
  def index
    @liga_guilties = LigaGuilty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @liga_guilties }
    end
  end

  # GET /liga_guilties/1
  # GET /liga_guilties/1.xml
  def show
    @liga_guilty = LigaGuilty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @liga_guilty }
    end
  end

  # GET /liga_guilties/new
  # GET /liga_guilties/new.xml
  def new
    @liga_guilty = LigaGuilty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @liga_guilty }
    end
  end

  # GET /liga_guilties/1/edit
  def edit
    @liga_guilty = LigaGuilty.find(params[:id])
  end

  # POST /liga_guilties
  # POST /liga_guilties.xml
  def create
    @liga_guilty = LigaGuilty.new(params[:liga_guilty])
    respond_to do |format|
      if LigaGuilty.where(:id_cuenta => getUsuarioActual.id_cuenta).size==0
        @liga_guilty.id_cuenta=getUsuarioActual.id_cuenta
        @liga_guilty.puntos=500
        if @liga_guilty.save
          format.html { redirect_to(@liga_guilty, :notice => 'Liga guilty was successfully created.') }
          format.xml  { render :xml => @liga_guilty, :status => :created, :location => @liga_guilty }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @liga_guilty.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@liga_guilty, :notice => 'Error: Ya estas inscrito en la liga.') }
        format.xml  { render :xml => @liga_guilty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /liga_guilties/1
  # PUT /liga_guilties/1.xml
  def update
    @liga_guilty = LigaGuilty.find(params[:id])

    respond_to do |format|
      if @liga_guilty.update_attributes(params[:liga_guilty])
        format.html { redirect_to(@liga_guilty, :notice => 'Liga guilty was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @liga_guilty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_guilties/1
  # DELETE /liga_guilties/1.xml
  def destroy
    @liga_guilty = LigaGuilty.find(params[:id])
    @liga_guilty.destroy

    respond_to do |format|
      format.html { redirect_to(liga_guilties_url) }
      format.xml  { head :ok }
    end
  end
end

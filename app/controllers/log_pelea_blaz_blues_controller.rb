class LogPeleaBlazBluesController < ApplicationController
  # GET /log_pelea_blaz_blues
  # GET /log_pelea_blaz_blues.xml
  def index
    @log_pelea_blaz_blues = LogPeleaBlazBlue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_pelea_blaz_blues }
    end
  end

  # GET /log_pelea_blaz_blues/1
  # GET /log_pelea_blaz_blues/1.xml
  def show
    @log_pelea_blaz_blue = LogPeleaBlazBlue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_pelea_blaz_blue }
    end
  end

  # GET /log_pelea_blaz_blues/new
  # GET /log_pelea_blaz_blues/new.xml
  def new
    @log_pelea_blaz_blue = LogPeleaBlazBlue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_pelea_blaz_blue }
    end
  end

  # GET /log_pelea_blaz_blues/1/edit
  def edit
    @log_pelea_blaz_blue = LogPeleaBlazBlue.find(params[:id])
  end

  # POST /log_pelea_blaz_blues
  # POST /log_pelea_blaz_blues.xml
  def create
    if autenticacion == "admin"
    @log_pelea_blaz_blue = LogPeleaBlazBlue.new(params[:log_pelea_blaz_blue])

    respond_to do |format|
      if LigaBlazBlue.where(:id_cuenta=>@log_pelea_blaz_blue.id_ganador).count!=0 && LigaBlazBlue.where(:id_cuenta=>@log_pelea_blaz_blue.id_perdedor).count!=0
        #get info de los usuarios
        id1=LigaBlazBlue.where(:id_cuenta=>@log_pelea_blaz_blue.id_ganador)
        id2=LigaBlazBlue.where(:id_cuenta=>@log_pelea_blaz_blue.id_perdedor)

        #calculo de cambio de puntuacion en el ranking
        @log_pelea_blaz_blue.puntos_ganador=calcularPuntosGanador(id1[0].puntos,id2[0].puntos)
        @log_pelea_blaz_blue.puntos_perdedor=-calcularPuntosPerdedor(id1[0].puntos,id2[0].puntos)

        #salvar los datos
        id1[0].puntos+=@log_pelea_blaz_blue.puntos_ganador
        id1[0].save

        id2[0].puntos+=@log_pelea_blaz_blue.puntos_perdedor
        id2[0].save
        #Fin calculos y saves externos

        if @log_pelea_blaz_blue.save
          format.html { redirect_to(@log_pelea_blaz_blue, :notice => 'Log pelea blaz blue was successfully created.') }
          format.xml  { render :xml => @log_pelea_blaz_blue, :status => :created, :location => @log_pelea_blaz_blue }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_pelea_blaz_blue.errors, :status => :unprocessable_entity }
        end
      else
          format.html { redirect_to(@log_pelea_blaz_blue, :notice => 'Error: al menos uno de los jugadores no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_pelea_blaz_blues/1
  # PUT /log_pelea_blaz_blues/1.xml
  def update
    if autenticacion == "admin"
    @log_pelea_blaz_blue = LogPeleaBlazBlue.find(params[:id])

    respond_to do |format|
      if @log_pelea_blaz_blue.update_attributes(params[:log_pelea_blaz_blue])
        format.html { redirect_to(@log_pelea_blaz_blue, :notice => 'Log pelea blaz blue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_pelea_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_pelea_blaz_blues/1
  # DELETE /log_pelea_blaz_blues/1.xml
  def destroy
    if autenticacion == "admin"
    @log_pelea_blaz_blue = LogPeleaBlazBlue.find(params[:id])
    #get info de los usuarios
    id1=LigaBlazBlue.where(:id_cuenta=>@log_pelea_blaz_blue.id_ganador)
    id2=LigaBlazBlue.where(:id_cuenta=>@log_pelea_blaz_blue.id_perdedor)
    #salvar los datos
    id1[0].puntos-=@log_pelea_blaz_blue.puntos_ganador
    id1[0].save
    id2[0].puntos-=@log_pelea_blaz_blue.puntos_perdedor
    id2[0].save
    #Fin de saves externos
    @log_pelea_blaz_blue.destroy

    respond_to do |format|
      format.html { redirect_to(log_pelea_blaz_blues_url) }
      format.xml  { head :ok }
    end
    end
  end
end

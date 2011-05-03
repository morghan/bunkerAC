class LogPeleaSf4sController < ApplicationController
  # GET /log_pelea_sf4s
  # GET /log_pelea_sf4s.xml
  def index
    @log_pelea_sf4s = LogPeleaSf4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_pelea_sf4s }
    end
  end

  # GET /log_pelea_sf4s/1
  # GET /log_pelea_sf4s/1.xml
  def show
    @log_pelea_sf4 = LogPeleaSf4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_pelea_sf4 }
    end
  end

  # GET /log_pelea_sf4s/new
  # GET /log_pelea_sf4s/new.xml
  def new
    @log_pelea_sf4 = LogPeleaSf4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_pelea_sf4 }
    end
  end

  # GET /log_pelea_sf4s/1/edit
  def edit
    @log_pelea_sf4 = LogPeleaSf4.find(params[:id])
  end

  # POST /log_pelea_sf4s
  # POST /log_pelea_sf4s.xml
  def create
    if autenticacion == "admin"
    @log_pelea_sf4 = LogPeleaSf4.new(params[:log_pelea_sf4])

    respond_to do |format|
      if LigaSf4.where(:id_cuenta=>@log_pelea_sf4.id_ganador).count!=0 && LigaSf4.where(:id_cuenta=>@log_pelea_sf4.id_perdedor).count!=0
        #get info de los usuarios
        id1=LigaSf4.where(:id_cuenta=>@log_pelea_sf4.id_ganador)
        id2=LigaSf4.where(:id_cuenta=>@log_pelea_sf4.id_perdedor)

        #calculo de cambio de puntuacion en el ranking	
        @log_pelea_sf4.puntos_ganador=calcularPuntosGanador(id1[0].puntos,id2[0].puntos)
        @log_pelea_sf4.puntos_perdedor=-calcularPuntosPerdedor(id1[0].puntos,id2[0].puntos)

        #aqui termina y los resultados quedan en $a1 y $.. q?? no no! queda en @logpelea.puntosid1 y en @logpelea.puntosid2
        id1[0].puntos+=@log_pelea_sf4.puntos_ganador
        id1[0].save

        id2[0].puntos+=@log_pelea_sf4.puntos_perdedor
        id2[0].save
        #Fin calculos y saves externos

        if @log_pelea_sf4.save
          format.html { redirect_to(@log_pelea_sf4, :notice => 'Log pelea sf4 was successfully created.') }
          format.xml  { render :xml => @log_pelea_sf4, :status => :created, :location => @log_pelea_sf4 }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_pelea_sf4.errors, :status => :unprocessable_entity }
        end
      else
          format.html { redirect_to(@log_pelea_sf4, :notice => 'Error: al menos uno de los jugadores no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_pelea_sf4s/1
  # PUT /log_pelea_sf4s/1.xml
  def update
    if autenticacion == "admin"
    @log_pelea_sf4 = LogPeleaSf4.find(params[:id])

    respond_to do |format|
      if @log_pelea_sf4.update_attributes(params[:log_pelea_sf4])
        format.html { redirect_to(@log_pelea_sf4, :notice => 'Log pelea sf4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_pelea_sf4.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_pelea_sf4s/1
  # DELETE /log_pelea_sf4s/1.xml
  def destroy
    if autenticacion == "admin"
    @log_pelea_sf4 = LogPeleaSf4.find(params[:id])
    #get info de los usuarios
    id1=LigaSf4.where(:id_cuenta=>@log_pelea_sf4.id_ganador)
    id2=LigaSf4.where(:id_cuenta=>@log_pelea_sf4.id_perdedor)
    #salvar los datos
    id1[0].puntos-=@log_pelea_sf4.puntos_ganador
    id1[0].save
    id2[0].puntos-=@log_pelea_sf4.puntos_perdedor
    id2[0].save
    #Fin de saves externos
    @log_pelea_sf4.destroy

    respond_to do |format|
      format.html { redirect_to(log_pelea_sf4s_url) }
      format.xml  { head :ok }
    end
    end
  end
end

class LogPeleaGuiltiesController < ApplicationController
  # GET /log_pelea_guilties
  # GET /log_pelea_guilties.xml
  def index
    @log_pelea_guilties = LogPeleaGuilty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_pelea_guilties }
    end
  end

  # GET /log_pelea_guilties/1
  # GET /log_pelea_guilties/1.xml
  def show
    @log_pelea_guilty = LogPeleaGuilty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_pelea_guilty }
    end
  end

  # GET /log_pelea_guilties/new
  # GET /log_pelea_guilties/new.xml
  def new
    @log_pelea_guilty = LogPeleaGuilty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_pelea_guilty }
    end
  end

  # GET /log_pelea_guilties/1/edit
  def edit
    @log_pelea_guilty = LogPeleaGuilty.find(params[:id])
  end

  # POST /log_pelea_guilties
  # POST /log_pelea_guilties.xml
  def create
    if autenticacion == "admin"
    @log_pelea_guilty = LogPeleaGuilty.new(params[:log_pelea_guilty])

    respond_to do |format|
      if LigaGuilty.where(:id_cuenta=>@log_pelea_guilty.id_ganador).count!=0 && LigaGuilty.where(:id_cuenta=>@log_pelea_guilty.id_perdedor).count!=0
        #get info de los usuarios
        id1=LigaGuilty.where(:id_cuenta=>@log_pelea_guilty.id_ganador)
        id2=LigaGuilty.where(:id_cuenta=>@log_pelea_guilty.id_perdedor)

        #calculo de cambio de puntuacion en el ranking
        @log_pelea_guilty.puntos_ganador=calcularPuntosGanador(id1[0].puntos,id2[0].puntos)
        @log_pelea_guilty.puntos_perdedor=-calcularPuntosPerdedor(id1[0].puntos,id2[0].puntos)

        #aqui termina y los resultados quedan en $a1 y $.. q?? no no! queda en @logpelea.puntosid1 y en @logpelea.puntosid2
        id1[0].puntos+=@log_pelea_guilty.puntos_ganador
        id1[0].save

        id2[0].puntos+=@log_pelea_guilty.puntos_perdedor
        id2[0].save
        #Fin calculos y saves externos

        if @log_pelea_guilty.save
          format.html { redirect_to(@log_pelea_guilty, :notice => 'Log pelea guilty was successfully created.') }
          format.xml  { render :xml => @log_pelea_guilty, :status => :created, :location => @log_pelea_guilty }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_pelea_guilty.errors, :status => :unprocessable_entity }
        end
      else
          format.html { redirect_to(@log_pelea_guilty, :notice => 'Error: al menos uno de los jugadores no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_pelea_guilties/1
  # PUT /log_pelea_guilties/1.xml
  def update
    if autenticacion == "admin"
    @log_pelea_guilty = LogPeleaGuilty.find(params[:id])

    respond_to do |format|
      if @log_pelea_guilty.update_attributes(params[:log_pelea_guilty])
        format.html { redirect_to(@log_pelea_guilty, :notice => 'Log pelea guilty was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_pelea_guilty.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_pelea_guilties/1
  # DELETE /log_pelea_guilties/1.xml
  def destroy
    if autenticacion == "admin"
    @log_pelea_guilty = LogPeleaGuilty.find(params[:id])
    #get info de los usuarios
    id1=LigaGuilty.where(:id_cuenta=>@log_pelea_guilty.id_ganador)
    id2=LigaGuilty.where(:id_cuenta=>@log_pelea_guilty.id_perdedor)
    #salvar los datos
    id1[0].puntos-=@log_pelea_guilty.puntos_ganador
    id1[0].save
    id2[0].puntos-=@log_pelea_guilty.puntos_perdedor
    id2[0].save
    #Fin de saves externos
    @log_pelea_guilty.destroy

    respond_to do |format|
      format.html { redirect_to(log_pelea_guilties_url) }
      format.xml  { head :ok }
    end
    end
  end
end

class LogPeleaSuperSf4GeneralsController < ApplicationController
  # GET /log_pelea_super_sf4_generals
  # GET /log_pelea_super_sf4_generals.xml
  def index
    @log_pelea_super_sf4_generals = LogPeleaSuperSf4General.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_pelea_super_sf4_generals }
    end
  end

  # GET /log_pelea_super_sf4_generals/1
  # GET /log_pelea_super_sf4_generals/1.xml
  def show
    @log_pelea_super_sf4_general = LogPeleaSuperSf4General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_pelea_super_sf4_general }
    end
  end

  # GET /log_pelea_super_sf4_generals/new
  # GET /log_pelea_super_sf4_generals/new.xml
  def new
    @log_pelea_super_sf4_general = LogPeleaSuperSf4General.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_pelea_super_sf4_general }
    end
  end

  # GET /log_pelea_super_sf4_generals/1/edit
  def edit
    @log_pelea_super_sf4_general = LogPeleaSuperSf4General.find(params[:id])
  end

  # POST /log_pelea_super_sf4_generals
  # POST /log_pelea_super_sf4_generals.xml
  def create
    @log_pelea_super_sf4_general = LogPeleaSuperSf4General.new(params[:log_pelea_super_sf4_general])

    respond_to do |format|

      if LigaSuperSf4General.where(:cuenta=>@log_pelea_super_sf4_general.ganador).count!=0 && LigaSuperSf4General.where(:cuenta=>@log_pelea_super_sf4_general.perdedor).count!=0
        #get info de los usuarios
        id1=LigaSuperSf4General.where(:cuenta=>@log_pelea_super_sf4_general.ganador)
        id2=LigaSuperSf4General.where(:cuenta=>@log_pelea_super_sf4_general.perdedor)

        #calculo de cambio de puntuacion en el ranking
        @log_pelea_super_sf4_general.puntos_ganador=calcularPuntosGanador(id1[0].puntos,id2[0].puntos)
        @log_pelea_super_sf4_general.puntos_perdedor=-calcularPuntosPerdedor(id1[0].puntos,id2[0].puntos)

        #salvar los datos
        id1[0].puntos+=@log_pelea_super_sf4_general.puntos_ganador
        id1[0].save

        id2[0].puntos+=@log_pelea_super_sf4_general.puntos_perdedor
        id2[0].save
        #Fin calculos y saves externos

        if @log_pelea_super_sf4_general.save
          format.html { redirect_to(@log_pelea_super_sf4_general, :notice => 'Log pelea super sf4 general was successfully created.') }
          format.xml  { render :xml => @log_pelea_super_sf4_general, :status => :created, :location => @log_pelea_super_sf4_general }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_pelea_super_sf4_general.errors, :status => :unprocessable_entity }
        end
      else
          format.html { redirect_to(@log_pelea_super_sf4_general, :notice => 'Error: al menos uno de los jugadores no esta inscrito.') }
      end
    end
  end

  # PUT /log_pelea_super_sf4_generals/1
  # PUT /log_pelea_super_sf4_generals/1.xml
  def update
    @log_pelea_super_sf4_general = LogPeleaSuperSf4General.find(params[:id])

    respond_to do |format|
      if @log_pelea_super_sf4_general.update_attributes(params[:log_pelea_super_sf4_general])
        format.html { redirect_to(@log_pelea_super_sf4_general, :notice => 'Log pelea super sf4 general was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_pelea_super_sf4_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /log_pelea_super_sf4_generals/1
  # DELETE /log_pelea_super_sf4_generals/1.xml
  def destroy
    a=10/0
    @log_pelea_super_sf4_general = LogPeleaSuperSf4General.find(params[:id])


    #get info de los usuarios
    id1=LigaSuperSf4General.where(:cuenta=>@log_pelea_super_sf4_general.ganador)
    id2=LigaSuperSf4General.where(:cuenta=>@log_pelea_super_sf4_general.perdedor)
    #salvar los datos
    id1[0].puntos-=@log_pelea_super_sf4_general.puntos_ganador
    id1[0].save
    id2[0].puntos-=@log_pelea_super_sf4_general.puntos_perdedor
    id2[0].save
    #Fin de saves externos


    @log_pelea_super_sf4_general.destroy

    respond_to do |format|
      format.html { redirect_to(log_pelea_super_sf4_generals_url) }
      format.xml  { head :ok }
    end
  end
end

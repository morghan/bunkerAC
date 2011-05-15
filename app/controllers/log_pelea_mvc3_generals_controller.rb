class LogPeleaMvc3GeneralsController < ApplicationController
  # GET /log_pelea_mvc3_generals
  # GET /log_pelea_mvc3_generals.xml
  def index
    @log_pelea_mvc3_generals = LogPeleaMvc3General.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_pelea_mvc3_generals }
    end
  end

  # GET /log_pelea_mvc3_generals/1
  # GET /log_pelea_mvc3_generals/1.xml
  def show
    @log_pelea_mvc3_general = LogPeleaMvc3General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_pelea_mvc3_general }
    end
  end

  # GET /log_pelea_mvc3_generals/new
  # GET /log_pelea_mvc3_generals/new.xml
  def new
    @log_pelea_mvc3_general = LogPeleaMvc3General.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_pelea_mvc3_general }
    end
  end

  # GET /log_pelea_mvc3_generals/1/edit
  def edit
    @log_pelea_mvc3_general = LogPeleaMvc3General.find(params[:id])
  end

  # POST /log_pelea_mvc3_generals
  # POST /log_pelea_mvc3_generals.xml
  def create
    @log_pelea_mvc3_general = LogPeleaMvc3General.new(params[:log_pelea_mvc3_general])

    respond_to do |format|
      if LigaMvc3.where(:id_cuenta=>@log_pelea_mvc3_general.id_ganador).count!=0 && LigaMvc3.where(:id_cuenta=>@log_pelea_mvc3_general.id_perdedor).count!=0
        #get info de los usuarios
        id1=LigaMvc3.where(:id_cuenta=>@log_pelea_mvc3_general.id_ganador)
        id2=LigaMvc3.where(:id_cuenta=>@log_pelea_mvc3_general.id_perdedor)

        #calculo de cambio de puntuacion en el ranking
        @log_pelea_mvc3_general.puntos_ganador=calcularPuntosGanador(id1[0].puntos,id2[0].puntos)
        @log_pelea_mvc3_general.puntos_perdedor=-calcularPuntosPerdedor(id1[0].puntos,id2[0].puntos)

        #salvar los datos
        id1[0].puntos+=@log_pelea_mvc3_general.puntos_ganador
        id1[0].save

        id2[0].puntos+=@log_pelea_mvc3_general.puntos_perdedor
        id2[0].save
        #Fin calculos y saves externos

        if @log_pelea_mvc3_general.save
          format.html { redirect_to(@log_pelea_mvc3_general, :notice => 'Log pelea mvc3 general was successfully created.') }
          format.xml  { render :xml => @log_pelea_mvc3_general, :status => :created, :location => @log_pelea_mvc3_general }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_pelea_mvc3_general.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /log_pelea_mvc3_generals/1
  # PUT /log_pelea_mvc3_generals/1.xml
  def update
    @log_pelea_mvc3_general = LogPeleaMvc3General.find(params[:id])

    respond_to do |format|
      if @log_pelea_mvc3_general.update_attributes(params[:log_pelea_mvc3_general])
        format.html { redirect_to(@log_pelea_mvc3_general, :notice => 'Log pelea mvc3 general was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_pelea_mvc3_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /log_pelea_mvc3_generals/1
  # DELETE /log_pelea_mvc3_generals/1.xml
  def destroy
    @log_pelea_mvc3_general = LogPeleaMvc3General.find(params[:id])

    #get info de los usuarios
    id1=LigaMvc3.where(:id_cuenta=>@log_pelea_mvc3_general.id_ganador)
    id2=LigaMvc3.where(:id_cuenta=>@log_pelea_mvc3_general.id_perdedor)
    #salvar los datos
    id1[0].puntos-=@log_pelea_mvc3_general.puntos_ganador
    id1[0].save
    id2[0].puntos-=@log_pelea_mvc3_general.puntos_perdedor
    id2[0].save
    #Fin de saves externos

    @log_pelea_mvc3_general.destroy

    respond_to do |format|
      format.html { redirect_to(log_pelea_mvc3_generals_url) }
      format.xml  { head :ok }
    end
  end
end

class LogBonoGuiltiesController < ApplicationController
  # GET /log_bono_guilties
  # GET /log_bono_guilties.xml
  def index
    @log_bono_guilties = LogBonoGuilty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_bono_guilties }
    end
  end

  # GET /log_bono_guilties/1
  # GET /log_bono_guilties/1.xml
  def show
    @log_bono_guilty = LogBonoGuilty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_bono_guilty }
    end
  end

  # GET /log_bono_guilties/new
  # GET /log_bono_guilties/new.xml
  def new
    @log_bono_guilty = LogBonoGuilty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_bono_guilty }
    end
  end

  # GET /log_bono_guilties/1/edit
  def edit
    @log_bono_guilty = LogBonoGuilty.find(params[:id])
  end

  # POST /log_bono_guilties
  # POST /log_bono_guilties.xml
  def create
    if autenticacion == "admin"
    @log_bono_guilty = LogBonoGuilty.new(params[:log_bono_guilty])

    respond_to do |format|
      if LigaGuilty.where(:id_cuenta=>@log_bono_guilty.id_cuenta).size!=0
        puntos_liga=LigaGuilty.where(:id_cuenta=>@log_bono_guilty.id_cuenta)[0]
        puntos_liga.puntos+=@log_bono_guilty.puntos
        puntos_liga.save

        if @log_bono_guilty.save
          format.html { redirect_to(@log_bono_guilty, :notice => 'Log bono guilty was successfully created.') }
          format.xml  { render :xml => @log_bono_guilty, :status => :created, :location => @log_bono_guilty }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_bono_guilty.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@log_bono_guilty, :notice => 'Error: el jugador no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_bono_guilties/1
  # PUT /log_bono_guilties/1.xml
  def update
    if autenticacion == "admin"
    @log_bono_guilty = LogBonoGuilty.find(params[:id])

    respond_to do |format|
      if @log_bono_guilty.update_attributes(params[:log_bono_guilty])
        format.html { redirect_to(@log_bono_guilty, :notice => 'Log bono guilty was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_bono_guilty.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_bono_guilties/1
  # DELETE /log_bono_guilties/1.xml
  def destroy
    if autenticacion == "admin"
    @log_bono_guilty = LogBonoGuilty.find(params[:id])
    puntos_liga=LigaGuilty.where(:id_cuenta=>@log_bono_guilty.id_cuenta)[0]
    puntos_liga.puntos-=@log_bono_guilty.puntos
    puntos_liga.save
    @log_bono_guilty.destroy

    respond_to do |format|
      format.html { redirect_to(log_bono_guilties_url) }
      format.xml  { head :ok }
    end
    end
  end
end

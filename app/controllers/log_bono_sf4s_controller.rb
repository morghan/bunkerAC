class LogBonoSf4sController < ApplicationController
  # GET /log_bono_sf4s
  # GET /log_bono_sf4s.xml
  def index
    @log_bono_sf4s = LogBonoSf4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_bono_sf4s }
    end
  end

  # GET /log_bono_sf4s/1
  # GET /log_bono_sf4s/1.xml
  def show
    @log_bono_sf4 = LogBonoSf4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_bono_sf4 }
    end
  end

  # GET /log_bono_sf4s/new
  # GET /log_bono_sf4s/new.xml
  def new
    @log_bono_sf4 = LogBonoSf4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_bono_sf4 }
    end
  end

  # GET /log_bono_sf4s/1/edit
  def edit
    @log_bono_sf4 = LogBonoSf4.find(params[:id])
  end

  # POST /log_bono_sf4s
  # POST /log_bono_sf4s.xml
  def create
    if autenticacion == "admin"
    @log_bono_sf4 = LogBonoSf4.new(params[:log_bono_sf4])

    respond_to do |format|
      if LigaSf4.where(:id_cuenta=>@log_bono_sf4.id_cuenta).size!=0
        puntos_liga=LigaSf4.where(:id_cuenta=>@log_bono_sf4.id_cuenta)[0]
        puntos_liga.puntos+=@log_bono_sf4.puntos
        puntos_liga.save

        if @log_bono_sf4.save
          format.html { redirect_to(@log_bono_sf4, :notice => 'Log bono sf4 was successfully created.') }
          format.xml  { render :xml => @log_bono_sf4, :status => :created, :location => @log_bono_sf4 }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_bono_sf4.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@log_bono_sf4, :notice => 'Error: el jugador no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_bono_sf4s/1
  # PUT /log_bono_sf4s/1.xml
  def update
    if autenticacion == "admin"
    @log_bono_sf4 = LogBonoSf4.find(params[:id])

    respond_to do |format|
      if @log_bono_sf4.update_attributes(params[:log_bono_sf4])
        format.html { redirect_to(@log_bono_sf4, :notice => 'Log bono sf4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_bono_sf4.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_bono_sf4s/1
  # DELETE /log_bono_sf4s/1.xml
  def destroy
    if autenticacion == "admin"
    @log_bono_sf4 = LogBonoSf4.find(params[:id])
    puntos_liga=LigaSf4.where(:id_cuenta=>@log_bono_sf4.id_cuenta)[0]
    puntos_liga.puntos-=@log_bono_sf4.puntos
    puntos_liga.save
    @log_bono_sf4.destroy

    respond_to do |format|
      format.html { redirect_to(log_bono_sf4s_url) }
      format.xml  { head :ok }
    end
    end
  end
end

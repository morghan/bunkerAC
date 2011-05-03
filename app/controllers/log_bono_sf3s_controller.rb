class LogBonoSf3sController < ApplicationController
  # GET /log_bono_sf3s
  # GET /log_bono_sf3s.xml
  def index
    @log_bono_sf3s = LogBonoSf3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_bono_sf3s }
    end
  end

  # GET /log_bono_sf3s/1
  # GET /log_bono_sf3s/1.xml
  def show
    @log_bono_sf3 = LogBonoSf3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_bono_sf3 }
    end
  end

  # GET /log_bono_sf3s/new
  # GET /log_bono_sf3s/new.xml
  def new
    @log_bono_sf3 = LogBonoSf3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_bono_sf3 }
    end
  end

  # GET /log_bono_sf3s/1/edit
  def edit
    @log_bono_sf3 = LogBonoSf3.find(params[:id])
  end

  # POST /log_bono_sf3s
  # POST /log_bono_sf3s.xml
  def create
    if autenticacion == "admin"
    @log_bono_sf3 = LogBonoSf3.new(params[:log_bono_sf3])

    respond_to do |format|
      if LigaSf3.where(:id_cuenta=>@log_bono_sf3.id_cuenta).size!=0
        puntos_liga=LigaSf3.where(:id_cuenta=>@log_bono_sf3.id_cuenta)[0]
        puntos_liga.puntos+=@log_bono_sf3.puntos
        puntos_liga.save

        if @log_bono_sf3.save
          format.html { redirect_to(@log_bono_sf3, :notice => 'Log bono sf3 was successfully created.') }
          format.xml  { render :xml => @log_bono_sf3, :status => :created, :location => @log_bono_sf3 }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_bono_sf3.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@log_bono_sf3, :notice => 'Error: el jugador no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_bono_sf3s/1
  # PUT /log_bono_sf3s/1.xml
  def update
    if autenticacion == "admin"
    @log_bono_sf3 = LogBonoSf3.find(params[:id])

    respond_to do |format|
      if @log_bono_sf3.update_attributes(params[:log_bono_sf3])
        format.html { redirect_to(@log_bono_sf3, :notice => 'Log bono sf3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_bono_sf3.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_bono_sf3s/1
  # DELETE /log_bono_sf3s/1.xml
  def destroy
    if autenticacion == "admin"
    @log_bono_sf3 = LogBonoSf3.find(params[:id])
    puntos_liga=LigaSf3.where(:id_cuenta=>@log_bono_sf3.id_cuenta)[0]
    puntos_liga.puntos-=@log_bono_sf3.puntos
    puntos_liga.save
    @log_bono_sf3.destroy

    respond_to do |format|
      format.html { redirect_to(log_bono_sf3s_url) }
      format.xml  { head :ok }
    end
    end
  end
end

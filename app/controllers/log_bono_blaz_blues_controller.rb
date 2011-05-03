class LogBonoBlazBluesController < ApplicationController
  # GET /log_bono_blaz_blues
  # GET /log_bono_blaz_blues.xml
  def index
    @log_bono_blaz_blues = LogBonoBlazBlue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_bono_blaz_blues }
    end
  end

  # GET /log_bono_blaz_blues/1
  # GET /log_bono_blaz_blues/1.xml
  def show
    @log_bono_blaz_blue = LogBonoBlazBlue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_bono_blaz_blue }
    end
  end

  # GET /log_bono_blaz_blues/new
  # GET /log_bono_blaz_blues/new.xml
  def new
    @log_bono_blaz_blue = LogBonoBlazBlue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_bono_blaz_blue }
    end
  end

  # GET /log_bono_blaz_blues/1/edit
  def edit
    @log_bono_blaz_blue = LogBonoBlazBlue.find(params[:id])
  end

  # POST /log_bono_blaz_blues
  # POST /log_bono_blaz_blues.xml
  def create
    if autenticacion == "admin"
    @log_bono_blaz_blue = LogBonoBlazBlue.new(params[:log_bono_blaz_blue])

    respond_to do |format|
      if LigaBlazBlue.where(:id_cuenta=>@log_bono_blaz_blue.id_cuenta).size!=0
        puntos_liga=LigaBlazBlue.where(:id_cuenta=>@log_bono_blaz_blue.id_cuenta)[0]
        puntos_liga.puntos+=@log_bono_blaz_blue.puntos
        puntos_liga.save
        if @log_bono_blaz_blue.save
          format.html { redirect_to(@log_bono_blaz_blue, :notice => 'Log bono blaz blue was successfully created.') }
          format.xml  { render :xml => @log_bono_blaz_blue, :status => :created, :location => @log_bono_blaz_blue }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @log_bono_blaz_blue.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(@log_bono_blaz_blue, :notice => 'Error: el jugador no esta inscrito.') }
      end
    end
    end
  end

  # PUT /log_bono_blaz_blues/1
  # PUT /log_bono_blaz_blues/1.xml
  def update
    if autenticacion == "admin"
    @log_bono_blaz_blue = LogBonoBlazBlue.find(params[:id])

    respond_to do |format|
      if @log_bono_blaz_blue.update_attributes(params[:log_bono_blaz_blue])
        format.html { redirect_to(@log_bono_blaz_blue, :notice => 'Log bono blaz blue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_bono_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /log_bono_blaz_blues/1
  # DELETE /log_bono_blaz_blues/1.xml
  def destroy
    if autenticacion == "admin"
    @log_bono_blaz_blue = LogBonoBlazBlue.find(params[:id])
    puntos_liga=LigaBlazBlue.where(:id_cuenta=>@log_bono_blaz_blue.id_cuenta)[0]
    puntos_liga.puntos-=@log_bono_blaz_blue.puntos
    puntos_liga.save
    @log_bono_blaz_blue.destroy

    respond_to do |format|
      format.html { redirect_to(log_bono_blaz_blues_url) }
      format.xml  { head :ok }
    end
    end
  end
end

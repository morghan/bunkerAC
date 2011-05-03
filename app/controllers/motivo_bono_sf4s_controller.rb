class MotivoBonoSf4sController < ApplicationController
  # GET /motivo_bono_sf4s
  # GET /motivo_bono_sf4s.xml
  def index
    @motivo_bono_sf4s = MotivoBonoSf4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motivo_bono_sf4s }
    end
  end

  # GET /motivo_bono_sf4s/1
  # GET /motivo_bono_sf4s/1.xml
  def show
    @motivo_bono_sf4 = MotivoBonoSf4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motivo_bono_sf4 }
    end
  end

  # GET /motivo_bono_sf4s/new
  # GET /motivo_bono_sf4s/new.xml
  def new
    @motivo_bono_sf4 = MotivoBonoSf4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motivo_bono_sf4 }
    end
  end

  # GET /motivo_bono_sf4s/1/edit
  def edit
    @motivo_bono_sf4 = MotivoBonoSf4.find(params[:id])
  end

  # POST /motivo_bono_sf4s
  # POST /motivo_bono_sf4s.xml
  def create
    if autenticacion == "admin"
    @motivo_bono_sf4 = MotivoBonoSf4.new(params[:motivo_bono_sf4])

    respond_to do |format|
      if @motivo_bono_sf4.save
        format.html { redirect_to(@motivo_bono_sf4, :notice => 'Motivo bono sf4 was successfully created.') }
        format.xml  { render :xml => @motivo_bono_sf4, :status => :created, :location => @motivo_bono_sf4 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motivo_bono_sf4.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /motivo_bono_sf4s/1
  # PUT /motivo_bono_sf4s/1.xml
  def update
    if autenticacion == "admin"
    @motivo_bono_sf4 = MotivoBonoSf4.find(params[:id])

    respond_to do |format|
      if @motivo_bono_sf4.update_attributes(params[:motivo_bono_sf4])
        format.html { redirect_to(@motivo_bono_sf4, :notice => 'Motivo bono sf4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motivo_bono_sf4.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /motivo_bono_sf4s/1
  # DELETE /motivo_bono_sf4s/1.xml
  def destroy
    if autenticacion == "admin"
    @motivo_bono_sf4 = MotivoBonoSf4.find(params[:id])
    @motivo_bono_sf4.destroy

    respond_to do |format|
      format.html { redirect_to(motivo_bono_sf4s_url) }
      format.xml  { head :ok }
    end
    end
  end
end

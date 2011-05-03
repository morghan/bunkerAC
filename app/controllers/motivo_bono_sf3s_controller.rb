class MotivoBonoSf3sController < ApplicationController
  # GET /motivo_bono_sf3s
  # GET /motivo_bono_sf3s.xml
  def index
    @motivo_bono_sf3s = MotivoBonoSf3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motivo_bono_sf3s }
    end
  end

  # GET /motivo_bono_sf3s/1
  # GET /motivo_bono_sf3s/1.xml
  def show
    @motivo_bono_sf3 = MotivoBonoSf3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motivo_bono_sf3 }
    end
  end

  # GET /motivo_bono_sf3s/new
  # GET /motivo_bono_sf3s/new.xml
  def new
    @motivo_bono_sf3 = MotivoBonoSf3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motivo_bono_sf3 }
    end
  end

  # GET /motivo_bono_sf3s/1/edit
  def edit
    @motivo_bono_sf3 = MotivoBonoSf3.find(params[:id])
  end

  # POST /motivo_bono_sf3s
  # POST /motivo_bono_sf3s.xml
  def create
    if autenticacion == "admin"
    @motivo_bono_sf3 = MotivoBonoSf3.new(params[:motivo_bono_sf3])

    respond_to do |format|
      if @motivo_bono_sf3.save
        format.html { redirect_to(@motivo_bono_sf3, :notice => 'Motivo bono sf3 was successfully created.') }
        format.xml  { render :xml => @motivo_bono_sf3, :status => :created, :location => @motivo_bono_sf3 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motivo_bono_sf3.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /motivo_bono_sf3s/1
  # PUT /motivo_bono_sf3s/1.xml
  def update
    if autenticacion == "admin"
    @motivo_bono_sf3 = MotivoBonoSf3.find(params[:id])

    respond_to do |format|
      if @motivo_bono_sf3.update_attributes(params[:motivo_bono_sf3])
        format.html { redirect_to(@motivo_bono_sf3, :notice => 'Motivo bono sf3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motivo_bono_sf3.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /motivo_bono_sf3s/1
  # DELETE /motivo_bono_sf3s/1.xml
  def destroy
    if autenticacion == "admin"
    @motivo_bono_sf3 = MotivoBonoSf3.find(params[:id])
    @motivo_bono_sf3.destroy

    respond_to do |format|
      format.html { redirect_to(motivo_bono_sf3s_url) }
      format.xml  { head :ok }
    end
    end
  end
end

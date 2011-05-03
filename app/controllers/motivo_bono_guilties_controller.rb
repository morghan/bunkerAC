class MotivoBonoGuiltiesController < ApplicationController
  # GET /motivo_bono_guilties
  # GET /motivo_bono_guilties.xml
  def index
    @motivo_bono_guilties = MotivoBonoGuilty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motivo_bono_guilties }
    end
  end

  # GET /motivo_bono_guilties/1
  # GET /motivo_bono_guilties/1.xml
  def show
    @motivo_bono_guilty = MotivoBonoGuilty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motivo_bono_guilty }
    end
  end

  # GET /motivo_bono_guilties/new
  # GET /motivo_bono_guilties/new.xml
  def new
    @motivo_bono_guilty = MotivoBonoGuilty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motivo_bono_guilty }
    end
  end

  # GET /motivo_bono_guilties/1/edit
  def edit
    @motivo_bono_guilty = MotivoBonoGuilty.find(params[:id])
  end

  # POST /motivo_bono_guilties
  # POST /motivo_bono_guilties.xml
  def create
    if autenticacion == "admin"
    @motivo_bono_guilty = MotivoBonoGuilty.new(params[:motivo_bono_guilty])

    respond_to do |format|
      if @motivo_bono_guilty.save
        format.html { redirect_to(@motivo_bono_guilty, :notice => 'Motivo bono guilty was successfully created.') }
        format.xml  { render :xml => @motivo_bono_guilty, :status => :created, :location => @motivo_bono_guilty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motivo_bono_guilty.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /motivo_bono_guilties/1
  # PUT /motivo_bono_guilties/1.xml
  def update
    if autenticacion == "admin"
    @motivo_bono_guilty = MotivoBonoGuilty.find(params[:id])

    respond_to do |format|
      if @motivo_bono_guilty.update_attributes(params[:motivo_bono_guilty])
        format.html { redirect_to(@motivo_bono_guilty, :notice => 'Motivo bono guilty was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motivo_bono_guilty.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /motivo_bono_guilties/1
  # DELETE /motivo_bono_guilties/1.xml
  def destroy
    if autenticacion == "admin"
    @motivo_bono_guilty = MotivoBonoGuilty.find(params[:id])
    @motivo_bono_guilty.destroy

    respond_to do |format|
      format.html { redirect_to(motivo_bono_guilties_url) }
      format.xml  { head :ok }
    end
    end
  end
end

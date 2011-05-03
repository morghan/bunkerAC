class MotivoBonoBlazBluesController < ApplicationController
  # GET /motivo_bono_blaz_blues
  # GET /motivo_bono_blaz_blues.xml
  def index
    @motivo_bono_blaz_blues = MotivoBonoBlazBlue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motivo_bono_blaz_blues }
    end
  end

  # GET /motivo_bono_blaz_blues/1
  # GET /motivo_bono_blaz_blues/1.xml
  def show
    @motivo_bono_blaz_blue = MotivoBonoBlazBlue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motivo_bono_blaz_blue }
    end
  end

  # GET /motivo_bono_blaz_blues/new
  # GET /motivo_bono_blaz_blues/new.xml
  def new
    @motivo_bono_blaz_blue = MotivoBonoBlazBlue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motivo_bono_blaz_blue }
    end
  end

  # GET /motivo_bono_blaz_blues/1/edit
  def edit
    @motivo_bono_blaz_blue = MotivoBonoBlazBlue.find(params[:id])
  end

  # POST /motivo_bono_blaz_blues
  # POST /motivo_bono_blaz_blues.xml
  def create
    if autenticacion == "admin"
    @motivo_bono_blaz_blue = MotivoBonoBlazBlue.new(params[:motivo_bono_blaz_blue])

    respond_to do |format|
      if @motivo_bono_blaz_blue.save
        format.html { redirect_to(@motivo_bono_blaz_blue, :notice => 'Motivo bono blaz blue was successfully created.') }
        format.xml  { render :xml => @motivo_bono_blaz_blue, :status => :created, :location => @motivo_bono_blaz_blue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motivo_bono_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /motivo_bono_blaz_blues/1
  # PUT /motivo_bono_blaz_blues/1.xml
  def update
    if autenticacion == "admin"
    @motivo_bono_blaz_blue = MotivoBonoBlazBlue.find(params[:id])

    respond_to do |format|
      if @motivo_bono_blaz_blue.update_attributes(params[:motivo_bono_blaz_blue])
        format.html { redirect_to(@motivo_bono_blaz_blue, :notice => 'Motivo bono blaz blue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motivo_bono_blaz_blue.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /motivo_bono_blaz_blues/1
  # DELETE /motivo_bono_blaz_blues/1.xml
  def destroy
    if autenticacion == "admin"
    @motivo_bono_blaz_blue = MotivoBonoBlazBlue.find(params[:id])
    @motivo_bono_blaz_blue.destroy

    respond_to do |format|
      format.html { redirect_to(motivo_bono_blaz_blues_url) }
      format.xml  { head :ok }
    end
    end
  end
end

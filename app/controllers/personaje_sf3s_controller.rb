class PersonajeSf3sController < ApplicationController
  # GET /personaje_sf3s
  # GET /personaje_sf3s.xml
  def index
    @personaje_sf3s = PersonajeSf3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personaje_sf3s }
    end
  end

  # GET /personaje_sf3s/1
  # GET /personaje_sf3s/1.xml
  def show
    @personaje_sf3 = PersonajeSf3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personaje_sf3 }
    end
  end

  # GET /personaje_sf3s/new
  # GET /personaje_sf3s/new.xml
  def new
    @personaje_sf3 = PersonajeSf3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personaje_sf3 }
    end
  end

  # GET /personaje_sf3s/1/edit
  def edit
    @personaje_sf3 = PersonajeSf3.find(params[:id])
  end

  # POST /personaje_sf3s
  # POST /personaje_sf3s.xml
  def create
    if autenticacion == "admin"
    @personaje_sf3 = PersonajeSf3.new(params[:personaje_sf3])

    respond_to do |format|
      if @personaje_sf3.save
        format.html { redirect_to(@personaje_sf3, :notice => 'Personaje sf3 was successfully created.') }
        format.xml  { render :xml => @personaje_sf3, :status => :created, :location => @personaje_sf3 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personaje_sf3.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # PUT /personaje_sf3s/1
  # PUT /personaje_sf3s/1.xml
  def update
    if autenticacion == "admin"
    @personaje_sf3 = PersonajeSf3.find(params[:id])

    respond_to do |format|
      if @personaje_sf3.update_attributes(params[:personaje_sf3])
        format.html { redirect_to(@personaje_sf3, :notice => 'Personaje sf3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personaje_sf3.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

  # DELETE /personaje_sf3s/1
  # DELETE /personaje_sf3s/1.xml
  def destroy
    if autenticacion == "admin"
    @personaje_sf3 = PersonajeSf3.find(params[:id])
    @personaje_sf3.destroy

    respond_to do |format|
      format.html { redirect_to(personaje_sf3s_url) }
      format.xml  { head :ok }
    end
    end
  end
end

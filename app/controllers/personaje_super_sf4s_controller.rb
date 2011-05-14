class PersonajeSuperSf4sController < ApplicationController
  # GET /personaje_super_sf4s
  # GET /personaje_super_sf4s.xml
  def index
    @personaje_super_sf4s = PersonajeSuperSf4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personaje_super_sf4s }
    end
  end

  # GET /personaje_super_sf4s/1
  # GET /personaje_super_sf4s/1.xml
  def show
    @personaje_super_sf4 = PersonajeSuperSf4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personaje_super_sf4 }
    end
  end

  # GET /personaje_super_sf4s/new
  # GET /personaje_super_sf4s/new.xml
  def new
    @personaje_super_sf4 = PersonajeSuperSf4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personaje_super_sf4 }
    end
  end

  # GET /personaje_super_sf4s/1/edit
  def edit
    @personaje_super_sf4 = PersonajeSuperSf4.find(params[:id])
  end

  # POST /personaje_super_sf4s
  # POST /personaje_super_sf4s.xml
  def create
    @personaje_super_sf4 = PersonajeSuperSf4.new(params[:personaje_super_sf4])

    respond_to do |format|
      if @personaje_super_sf4.save
        format.html { redirect_to(@personaje_super_sf4, :notice => 'Personaje super sf4 was successfully created.') }
        format.xml  { render :xml => @personaje_super_sf4, :status => :created, :location => @personaje_super_sf4 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personaje_super_sf4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personaje_super_sf4s/1
  # PUT /personaje_super_sf4s/1.xml
  def update
    @personaje_super_sf4 = PersonajeSuperSf4.find(params[:id])

    respond_to do |format|
      if @personaje_super_sf4.update_attributes(params[:personaje_super_sf4])
        format.html { redirect_to(@personaje_super_sf4, :notice => 'Personaje super sf4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personaje_super_sf4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personaje_super_sf4s/1
  # DELETE /personaje_super_sf4s/1.xml
  def destroy
    @personaje_super_sf4 = PersonajeSuperSf4.find(params[:id])
    @personaje_super_sf4.destroy

    respond_to do |format|
      format.html { redirect_to(personaje_super_sf4s_url) }
      format.xml  { head :ok }
    end
  end
end

class PersonajeMvc3sController < ApplicationController
  # GET /personaje_mvc3s
  # GET /personaje_mvc3s.xml
  def index
    @personaje_mvc3s = PersonajeMvc3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personaje_mvc3s }
    end
  end

  # GET /personaje_mvc3s/1
  # GET /personaje_mvc3s/1.xml
  def show
    @personaje_mvc3 = PersonajeMvc3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personaje_mvc3 }
    end
  end

  # GET /personaje_mvc3s/new
  # GET /personaje_mvc3s/new.xml
  def new
    @personaje_mvc3 = PersonajeMvc3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personaje_mvc3 }
    end
  end

  # GET /personaje_mvc3s/1/edit
  def edit
    @personaje_mvc3 = PersonajeMvc3.find(params[:id])
  end

  # POST /personaje_mvc3s
  # POST /personaje_mvc3s.xml
  def create
    @personaje_mvc3 = PersonajeMvc3.new(params[:personaje_mvc3])

    respond_to do |format|
      if @personaje_mvc3.save
        format.html { redirect_to(@personaje_mvc3, :notice => 'Personaje mvc3 was successfully created.') }
        format.xml  { render :xml => @personaje_mvc3, :status => :created, :location => @personaje_mvc3 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personaje_mvc3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personaje_mvc3s/1
  # PUT /personaje_mvc3s/1.xml
  def update
    @personaje_mvc3 = PersonajeMvc3.find(params[:id])

    respond_to do |format|
      if @personaje_mvc3.update_attributes(params[:personaje_mvc3])
        format.html { redirect_to(@personaje_mvc3, :notice => 'Personaje mvc3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personaje_mvc3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personaje_mvc3s/1
  # DELETE /personaje_mvc3s/1.xml
  def destroy
    @personaje_mvc3 = PersonajeMvc3.find(params[:id])
    @personaje_mvc3.destroy

    respond_to do |format|
      format.html { redirect_to(personaje_mvc3s_url) }
      format.xml  { head :ok }
    end
  end
end

class AddinfosController < ApplicationController
  # GET /addinfos
  # GET /addinfos.json
  def index
    @addinfos = Addinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addinfos }
    end
  end

  # GET /addinfos/1
  # GET /addinfos/1.json
  def show
    @addinfo = Addinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addinfo }
    end
  end

  # GET /addinfos/new
  # GET /addinfos/new.json
  def new
    @addinfo = Addinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addinfo }
    end
  end

  # GET /addinfos/1/edit
  def edit
    @addinfo = Addinfo.find(params[:id])
  end

  # POST /addinfos
  # POST /addinfos.json
  def create
    @addinfo = Addinfo.new(params[:addinfo])

    respond_to do |format|
      if @addinfo.save
        format.html { redirect_to @addinfo, notice: 'Addinfo was successfully created.' }
        format.json { render json: @addinfo, status: :created, location: @addinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @addinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addinfos/1
  # PUT /addinfos/1.json
  def update
    @addinfo = Addinfo.find(params[:id])

    respond_to do |format|
      if @addinfo.update_attributes(params[:addinfo])
        format.html { redirect_to @addinfo, notice: 'Addinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addinfos/1
  # DELETE /addinfos/1.json
  def destroy
    @addinfo = Addinfo.find(params[:id])
    @addinfo.destroy

    respond_to do |format|
      format.html { redirect_to addinfos_url }
      format.json { head :no_content }
    end
  end
end

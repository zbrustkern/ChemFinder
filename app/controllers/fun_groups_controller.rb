class FunGroupsController < ApplicationController
  # GET /fun_groups
  # GET /fun_groups.json
  def index
    @fun_groups = FunGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fun_groups }
    end
  end

  # GET /fun_groups/1
  # GET /fun_groups/1.json
  def show
    @fun_group = FunGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fun_group }
    end
  end

  # GET /fun_groups/new
  # GET /fun_groups/new.json
  def new
    @fun_group = FunGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fun_group }
    end
  end

  # GET /fun_groups/1/edit
  def edit
    @fun_group = FunGroup.find(params[:id])
  end

  # POST /fun_groups
  # POST /fun_groups.json
  def create
    @fun_group = FunGroup.new(params[:fun_group])

    respond_to do |format|
      if @fun_group.save
        format.html { redirect_to @fun_group, notice: 'Fun group was successfully created.' }
        format.json { render json: @fun_group, status: :created, location: @fun_group }
      else
        format.html { render action: "new" }
        format.json { render json: @fun_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fun_groups/1
  # PUT /fun_groups/1.json
  def update
    @fun_group = FunGroup.find(params[:id])

    respond_to do |format|
      if @fun_group.update_attributes(params[:fun_group])
        format.html { redirect_to @fun_group, notice: 'Fun group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fun_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fun_groups/1
  # DELETE /fun_groups/1.json
  def destroy
    @fun_group = FunGroup.find(params[:id])
    @fun_group.destroy

    respond_to do |format|
      format.html { redirect_to fun_groups_url }
      format.json { head :no_content }
    end
  end
end

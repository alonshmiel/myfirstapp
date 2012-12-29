class TasksadminsController < ApplicationController
  # GET /tasksadmins
  # GET /tasksadmins.json
  skip_before_filter :is_worker, only: :index

  def index
    @tasksadmins = Tasksadmin.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasksadmins }
    end
  end

  # GET /tasksadmins/1
  # GET /tasksadmins/1.json
  def show
    @tasksadmin = Tasksadmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tasksadmin }
    end
  end

  # GET /tasksadmins/new
  # GET /tasksadmins/new.json
  def new
    @tasksadmin = Tasksadmin.new
    @workers = Worker.where(:is_worker => true)
    @admin_mail = "tomer.shmiel@gmail.com"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tasksadmin }
    end
  end

  # GET /tasksadmins/1/edit
  def edit
    @tasksadmin = Tasksadmin.find(params[:id])
  end

  # POST /tasksadmins
  # POST /tasksadmins.json
  def create
    @tasksadmin = Tasksadmin.new(params[:tasksadmin])

    respond_to do |format|
      if @tasksadmin.save
        format.html { redirect_to @tasksadmin, notice: 'Tasksadmin was successfully created.' }
        format.json { render json: @tasksadmin, status: :created, location: @tasksadmin }
      else
        format.html { render action: "new" }
        format.json { render json: @tasksadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasksadmins/1
  # PUT /tasksadmins/1.json
  def update
    @tasksadmin = Tasksadmin.find(params[:id])

    respond_to do |format|
      if @tasksadmin.update_attributes(params[:tasksadmin])
        format.html { redirect_to @tasksadmin, notice: 'Tasksadmin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tasksadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasksadmins/1
  # DELETE /tasksadmins/1.json
  def destroy
    @tasksadmin = Tasksadmin.find(params[:id])
    @tasksadmin.destroy

    respond_to do |format|
      format.html { redirect_to tasksadmins_url }
      format.json { head :no_content }
    end
  end
end

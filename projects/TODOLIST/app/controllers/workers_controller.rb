class WorkersController < ApplicationController
  # GET /workers
  # GET /workers.json
  skip_before_filter :is_worker, only: :index
  
  def index
    @email = current_user.email
    @tasks_worker = Tasksadmin.where(:worker_mail => @email)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workers }
    end
  end

  # GET /workers/1
  # GET /workers/1.json
  def show
    @task_worker = Tasksadmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @worker }
    end
  end

  # GET /workers/new
  # GET /workers/new.json
  def new
    @worker = Worker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @worker }
    end
  end

  # GET /workers/1/edit
  def edit
    @tasksadmin = Tasksadmin.find(params[:id])
    @worker_mail = "alon.shmiel@gmail.com"
    
  end

  # POST /workers
  # POST /workers.json
  def create
    @worker = Worker.new(params[:worker])

    respond_to do |format|
      if @worker.save
        format.html { redirect_to @worker, notice: 'Worker was successfully created.' }
        format.json { render json: @worker, status: :created, location: @worker }
      else
        format.html { render action: "new" }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workers/1
  # PUT /workers/1.json
  def update
    @worker = Tasksadmin.find(params[:id])

    respond_to do |format|
      if @worker.update_attributes(params[:worker])
        redirect_to :action => 'index'
      else
        redirect_to :action => 'index'
      end
    end
  end

  # DELETE /workers/1
  # DELETE /workers/1.json
  def destroy
    @worker = Tasksadmin.find(params[:id])
    @worker.destroy

    respond_to do |format|
      format.html { render action: "workers/index" }
      format.json { render json: @worker }
    end
  end
end

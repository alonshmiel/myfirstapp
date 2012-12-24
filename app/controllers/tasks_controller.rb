class TasksController < ApplicationController
<<<<<<< HEAD
  respond_to :html, :xml, :json
	def index
        @worker_tasks = Worker.where(:name => params[:worker_id])
        @name = params[:worker_id]
      
    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @worker }
    	end
	end
	def show
        @task = Worker.where(:name => params[:worker_id])

    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @worker }
    	end
	end

def edit
     @task = Worker.find(params[:id])
  end

  # POST /workers
  # POST /workers.json
  def create
    @worker = Worker.find(params[:worker_id])
    @task = @worker.tasks.build(params[:task])
=======
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])
>>>>>>> a72203f6334ec91d16b19f5388c76b63195e8698

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
<<<<<<< HEAD
        format.json { render json: @Task, status: :created, location: @task }
=======
        format.json { render json: @task, status: :created, location: @task }
>>>>>>> a72203f6334ec91d16b19f5388c76b63195e8698
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  # PUT /workers/1
  # PUT /workers/1.json
  def update
    
  end

  def new
     @worker = Worker.find(params[:worker_id])
     @task = @worker.tasks.new
     respond_with(@worker)
  end



  def update
  end
  
  def destroy
  end

  
=======
  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end
>>>>>>> a72203f6334ec91d16b19f5388c76b63195e8698
end

class TasksController < ApplicationController
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

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @Task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

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

  
end

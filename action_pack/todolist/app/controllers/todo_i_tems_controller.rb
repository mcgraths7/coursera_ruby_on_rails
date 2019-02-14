class TodoITemsController < ApplicationController
  before_action :set_todo_i_tem, only: [:show, :edit, :update, :destroy]

  # GET /todo_i_tems
  # GET /todo_i_tems.json
  def index
    @todo_i_tems = TodoITem.all
  end

  # GET /todo_i_tems/1
  # GET /todo_i_tems/1.json
  def show
  end

  # GET /todo_i_tems/new
  def new
    @todo_i_tem = TodoITem.new
  end

  # GET /todo_i_tems/1/edit
  def edit
  end

  # POST /todo_i_tems
  # POST /todo_i_tems.json
  def create
    @todo_i_tem = TodoITem.new(todo_i_tem_params)

    respond_to do |format|
      if @todo_i_tem.save
        format.html { redirect_to @todo_i_tem, notice: 'Todo i tem was successfully created.' }
        format.json { render :show, status: :created, location: @todo_i_tem }
      else
        format.html { render :new }
        format.json { render json: @todo_i_tem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_i_tems/1
  # PATCH/PUT /todo_i_tems/1.json
  def update
    respond_to do |format|
      if @todo_i_tem.update(todo_i_tem_params)
        format.html { redirect_to @todo_i_tem, notice: 'Todo i tem was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_i_tem }
      else
        format.html { render :edit }
        format.json { render json: @todo_i_tem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_i_tems/1
  # DELETE /todo_i_tems/1.json
  def destroy
    @todo_i_tem.destroy
    respond_to do |format|
      format.html { redirect_to todo_i_tems_url, notice: 'Todo i tem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_i_tem
      @todo_i_tem = TodoITem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_i_tem_params
      params.require(:todo_i_tem).permit(:due_date, :title, :description, :completed)
    end
end

class OperationsController < ApplicationController
  before_action :set_operation, only: %i[ show edit update destroy ]


  # GET /operations or /operations.json
  def index
    @operations = Operation.user_operation_list(current_user.id)
    @operations = Operation.user_operation(current_user.id)
    @somme_ops = somme_operation(@operations)
    #@operations = Operation.all
  end

  # GET /operations/1 or /operations/1.json
  def show
  end

  # GET /operations/new
  def new
    @operation = Operation.new
  end

  # GET /operations/1/edit
  def edit
  end

  # POST /operations or /operations.json
  def create
    @operation = current_user.operations.build(operation_params)

    respond_to do |format|
      if(@operation.montantsort.blank?)
      else

      @operation.montantsort = nombre_positif(@operation.montantsort)
     end

      if @operation.save
        format.html { redirect_to @operation, notice: "Operation was successfully created." }
        format.json { render :show, status: :created, location: @operation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operations/1 or /operations/1.json
  def update
    respond_to do |format|
      if @operation.update(operation_params)
        format.html { redirect_to @operation, notice: "Operation was successfully updated." }
        format.json { render :show, status: :ok, location: @operation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operations/1 or /operations/1.json
  def destroy
    @operation.destroy
    respond_to do |format|
      format.html { redirect_to operations_url, notice: "Operation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

   def somme_operation(operation)
     i= 0
     sommeOp = 0
     while (i<=operation.size)

       #sommeOp += Operation[i].montantsort.to_i
       sommeOp= Operation.sum(:montantsort)
       i += 1
     end
    sommeOp

   end

  def nombre_positif(nombre)
      if (nombre <0)
        flash.now[:danger] = 'pas de valeur negative'
      nombre.abs
     else
        nombre
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operation
      @operation = Operation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def operation_params
      params.require(:operation).permit(:date, :montantsort, :motif)
    end
end

class MessesController < ApplicationController
  before_action :set_mess, only: [:show, :edit, :update, :destroy]

  # GET /messes
  # GET /messes.json
  def index
    @messes = Mess.all
  end

  # GET /messes/1
  # GET /messes/1.json
  def show
  end

  # GET /messes/new
  def new
    @mess = Mess.new
  end

  # GET /messes/1/edit
  def edit
  end

  # POST /messes
  # POST /messes.json
  def create
    @mess = Mess.new(mess_params)

    respond_to do |format|
      if @mess.save
        format.html { redirect_to @mess, notice: 'Mess was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mess }
      else
        format.html { render action: 'new' }
        format.json { render json: @mess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messes/1
  # PATCH/PUT /messes/1.json
  def update
    respond_to do |format|
      if @mess.update(mess_params)
        format.html { redirect_to @mess, notice: 'Mess was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messes/1
  # DELETE /messes/1.json
  def destroy
    @mess.destroy
    respond_to do |format|
      format.html { redirect_to messes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mess
      @mess = Mess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mess_params
      params.require(:mess).permit(:title, :content)
    end
end

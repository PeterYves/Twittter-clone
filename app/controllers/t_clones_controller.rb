class TClonesController < ApplicationController
  before_action :set_t_clone, only: [:show, :edit, :update, :destroy]
  def index
    @t_clones = TClone.all
  end

  def show
  end

  def new
    if params[:back]
      @t_clone = TClone.new(t_clone_params)
    else
      @t_clone = TClone.new
    end
  end

  def edit
  end

  def create
    @t_clone = TClone.new(t_clone_params)

    respond_to do |format|
      if @t_clone.save
        format.html { redirect_to @t_clone, notice: 'T clone was successfully created.' }
        format.json { render :show, status: :created, location: @t_clone }
      else
        format.html { render :new }
        format.json { render json: @t_clone.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @t_clone.update(t_clone_params)
        format.html { redirect_to @t_clone, notice: 'T clone was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_clone }
      else
        format.html { render :edit }
        format.json { render json: @t_clone.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @t_clone.destroy
    respond_to do |format|
      format.html { redirect_to t_clones_url, notice: 'T clone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirm
    @t_clone = TClone.new(t_clone_params)
    render :new if @t_clone.invalid?
  end

  private
  def set_t_clone
    @t_clone = TClone.find(params[:id])
  end

  def t_clone_params
    params.require(:t_clone).permit(:content)
  end
end

class GuessesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_guess, only: [:show, :edit, :update, :destroy]

  # GET /guesses
  def index
    @guesses = Guess.all.where(user: current_user)
  end

  # GET /guesses/1
  def show
  end

  # GET /guess/new
  def new
    @guess = Guess.new(user: current_user)
  end

  # GET /guesses/1/edit
  def edit
  end

  # POST /guesses
  def create
    @guess = Guess.new(guess_params.merge(user: current_user))

    respond_to do |format|
      if @guess.save
        format.html { redirect_to @guess, notice: 'Guess was successfully created.' }
        format.json { render :show, status: :created, location: @guess }
      else
        format.html { render :new }
        format.json { render json: @guess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guesses/1
  def update
    respond_to do |format|
      if @guess.update(guess_params)
        format.html { redirect_to @guess, notice: 'Guess was successfully updated.' }
        format.json { render :show, status: :ok, location: @guess }
      else
        format.html { render :edit }
        format.json { render json: @guess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guesses/1
  def destroy
    @guess.destroy
    respond_to do |format|
      format.html { redirect_to guesses_url, notice: 'Guess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_guess
    @guess = Guess.find_by(id: params[:id], user: current_user)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def guess_params
    params.require(:guess).permit(:name, :value)
  end
end

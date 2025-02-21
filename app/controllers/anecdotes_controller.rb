class AnecdotesController < ApplicationController
  before_action :set_anecdote, only: %i[ show edit update destroy ]

  # GET /anecdotes or /anecdotes.json
  def index
    @anecdotes = Anecdote.all
  end

  # GET /anecdotes/1 or /anecdotes/1.json
  def show
  end

  # GET /anecdotes/new
  def new
    @anecdote = Anecdote.new
  end

  # GET /anecdotes/1/edit
  def edit
  end

  # POST /anecdotes or /anecdotes.json
  def create
    @anecdote = Anecdote.new(anecdote_params)

    respond_to do |format|
      if @anecdote.save
        format.html { redirect_to @anecdote, notice: "Anecdote was successfully created." }
        format.json { render :show, status: :created, location: @anecdote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anecdotes/1 or /anecdotes/1.json
  def update
    respond_to do |format|
      if @anecdote.update(anecdote_params)
        format.html { redirect_to @anecdote, notice: "Anecdote was successfully updated." }
        format.json { render :show, status: :ok, location: @anecdote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anecdotes/1 or /anecdotes/1.json
  def destroy
    @anecdote.destroy!

    respond_to do |format|
      format.html { redirect_to anecdotes_path, status: :see_other, notice: "Anecdote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anecdote
      @anecdote = Anecdote.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def anecdote_params
      params.expect(anecdote: [ :title, :content, :user_id ])
    end
end

class AufgabesController < ApplicationController
  before_action :set_aufgabe, only: %i[ show edit update destroy ]

  # GET /aufgabes or /aufgabes.json
  def index
    @aufgabes = Aufgabe.all
  end

  # GET /aufgabes/1 or /aufgabes/1.json
  def show
  end

  # GET /aufgabes/new
  def new
    @aufgabe = Aufgabe.new
  end

  # GET /aufgabes/1/edit
  def edit
  end

  # POST /aufgabes or /aufgabes.json
  def create
    @aufgabe = Aufgabe.new(aufgabe_params)

    respond_to do |format|
      if @aufgabe.save
        format.html { redirect_to @aufgabe, notice: "Aufgabe was successfully created." }
        format.json { render :show, status: :created, location: @aufgabe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aufgabe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aufgabes/1 or /aufgabes/1.json
  def update
    respond_to do |format|
      if @aufgabe.update(aufgabe_params)
        format.html { redirect_to @aufgabe, notice: "Aufgabe was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @aufgabe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aufgabe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aufgabes/1 or /aufgabes/1.json
  def destroy
    @aufgabe.destroy!

    respond_to do |format|
      format.html { redirect_to aufgabes_path, notice: "Aufgabe was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aufgabe
      @aufgabe = Aufgabe.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def aufgabe_params
      params.expect(aufgabe: [ :aufgabe, :dringlichkeit, :schwierigkeit ])
    end
end

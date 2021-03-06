class EndorsementsController < ApplicationController
  before_action :set_endorsement, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, except: [:index ]
  # GET /endorsements
  # GET /endorsements.json
  def index
    @content = Page.find(3)
    @electeds = Endorsement.where(category: 'Elected') 
    @orgs = Endorsement.where(category: 'Organization')
    @individuals = Endorsement.where(category: 'Community Leader')
     @news = News.first
     @title = "Endorsements for Matt"
     @description = "About Matt Williams, candidate for Davis City Council 2016"
  end

  # GET /endorsements/1
  # GET /endorsements/1.json
  def show
  end

  # GET /endorsements/new
  def new
    @endorsement = Endorsement.new
  end

  # GET /endorsements/1/edit
  def edit
  end

  # POST /endorsements
  # POST /endorsements.json
  def create
    @endorsement = Endorsement.new(endorsement_params)

    respond_to do |format|
      if @endorsement.save
        format.html { redirect_to endorsements_path, notice: 'Endorsement was successfully created.' }
        format.json { render :show, status: :created, location: @endorsement }
      else
        format.html { render :new }
        format.json { render json: @endorsement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endorsements/1
  # PATCH/PUT /endorsements/1.json
  def update
    respond_to do |format|
      if @endorsement.update(endorsement_params)
        format.html { redirect_to endorsements_path, notice: 'Endorsement was successfully updated.' }
        format.json { render :show, status: :ok, location: @endorsement }
      else
        format.html { render :edit }
        format.json { render json: @endorsement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endorsements/1
  # DELETE /endorsements/1.json
  def destroy
    @endorsement.destroy
    respond_to do |format|
      format.html { redirect_to endorsements_url, notice: 'Endorsement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endorsement
      @endorsement = Endorsement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endorsement_params
      params.require(:endorsement).permit(:firstname, :lastname, :category, :ranking, :title, :organization)
    end
end

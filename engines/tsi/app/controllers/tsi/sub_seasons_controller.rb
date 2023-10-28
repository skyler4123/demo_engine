module Tsi
  class SubSeasonsController < ApplicationController
    before_action :set_sub_season, only: %i[ show edit update destroy ]

    # GET /sub_seasons
    def index
      @sub_seasons = SubSeason.all
    end

    # GET /sub_seasons/1
    def show
    end

    # GET /sub_seasons/new
    def new
      @sub_season = SubSeason.new
    end

    # GET /sub_seasons/1/edit
    def edit
    end

    # POST /sub_seasons
    def create
      @sub_season = SubSeason.new(sub_season_params)

      if @sub_season.save
        redirect_to @sub_season, notice: "Sub season was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /sub_seasons/1
    def update
      if @sub_season.update(sub_season_params)
        redirect_to @sub_season, notice: "Sub season was successfully updated.", status: :see_other
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /sub_seasons/1
    def destroy
      @sub_season.destroy!
      redirect_to sub_seasons_url, notice: "Sub season was successfully destroyed.", status: :see_other
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sub_season
        @sub_season = SubSeason.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def sub_season_params
        params.require(:sub_season).permit(:name, :season_id)
      end
  end
end

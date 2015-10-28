class JsonTeamsController < ApplicationController
#index, show, new, edit, create, update, destroy

  def index
    @teams = Team.all
    render json: @teams
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  def new
    @team = Team.new
  end

  def create
    puts team_params
    @team = Team.new(team_params)
    if @team.save
      render json: @team
    else
      render :json => { :error => :"error al crear un equipo"} #render mantiene la peticion con el objeto y retorna los datos al formulario, si usaramos redirect se pierden los datos al volver
    end
  end

  private
  def team_params
    params.require(:team).permit(:nombre,:avatar,:year,:campeonatos)
  end
end

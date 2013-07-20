class JurisprudencesController < ApplicationController
  def index
    @jurisprudences = Jurisprudence.scoped
  end

  def show
    @jurisprudence = Jurisprudence.find(params[:id])
  end

end

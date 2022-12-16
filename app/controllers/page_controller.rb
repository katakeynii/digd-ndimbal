class PageController < ApplicationController
  before_action :authenticate_utilisateur!, only: [:privee]
  def index
  end

  def privee
  end
end

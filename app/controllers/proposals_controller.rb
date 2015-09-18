class ProposalsController < ApplicationController

  def index
    @proposals = Proposal.all
  end

  def create
    @proposal = Proposal.new(proposal_params)

    @proposal.save
    redirect_to @proposal
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def new

  end

  private
    def proposal_params
      params.require(:proposal).permit(:idea)
    end

end

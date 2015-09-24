class RefutationsController < ApplicationController

  http_basic_authenticate_with name: '1', password: '2', only: :destroy
  
  def create
    @proposal = Proposal.find(params[:proposal_id])
    @refutation = @proposal.refutations.create(refutation_params)
    redirect_to proposal_path(@proposal)
  end

  def destroy
    @proposal = Proposal.find(params[:proposal_id])
    @refutation = @proposal.refutations.find(params[:id])
    @refutation.destroy
    redirect_to proposal_path(@proposal)
  end

  private
    def refutation_params
      params.require(:refutation).permit(:proof)
    end

end
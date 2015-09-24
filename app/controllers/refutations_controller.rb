class RefutationsController < ApplicationController

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
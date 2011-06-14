class ProductosController < InheritedResources::Base

  respond_to :html, :xml, :json

  def collection
    @productos ||= end_of_association_chain.includes( :editorial, :categoria )
  end

end

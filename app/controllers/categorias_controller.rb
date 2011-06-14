class CategoriasController < InheritedResources::Base

  def collection
    @categorias ||= end_of_association_chain.paginate :page => params[:page], :per_page => 5
  end

end

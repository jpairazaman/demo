class Producto < ActiveRecord::Base
  belongs_to :editorial
  belongs_to :categoria

  validates_presence_of :codigo, :nombre_largo, :nombre_corto, :editorial_id, :categoria_id

  scope :disponible, where( :disponible => true )
  scope :no_disponible, where( :disponible => false )

=begin
  after_initialize :default_values

  def default_values
    self.disponible ||= true
  end
=end

end

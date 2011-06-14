class Categoria < ActiveRecord::Base
  has_many :productos

  validates_presence_of :nombre

  scope :disponible, where( :disponible => true )
  scope :no_disponible, where( :disponible => false )

  def to_s
    nombre
  end

end

class Editorial < ActiveRecord::Base
  has_many :productos

  validates_presence_of :codigo, :nombre

  validates_length_of :codigo, :minimum=>2
 validates_uniqueness_of :codigo


  scope :disponible, where( :disponible => true )
  scope :no_disponible, where( :disponible => false )

  def to_s
    nombre + ' - (' + codigo + ')'
  end

end

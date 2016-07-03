class Oberon < CharactorBase
  def initialize
    super
    @id = 'oberon'
    @name = OBERON
    @role_name[:merlin] = MORDRED_SUBORDINATES
  end
end


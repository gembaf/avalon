class MordredSubordinates < CharactorBase
  def initialize
    super
    @id = 'mordred_subordinates'
    @name = MORDRED_SUBORDINATES
    @role_name[:merlin] = MORDRED_SUBORDINATES
    @role_name[:assassin] = MORDRED_SUBORDINATES
    @role_name[:mordred] = MORDRED_SUBORDINATES
    @role_name[:morgana] = MORDRED_SUBORDINATES
    @role_name[:mordred_subordinates] = MORDRED_SUBORDINATES
  end
end


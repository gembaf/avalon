class Mordred < CharactorBase
  def initialize
    super
    @id = 'mordred'
    @name = MORDRED
    @role_name[:assassin] = MORDRED_SUBORDINATES
    @role_name[:morgana] = MORDRED_SUBORDINATES
    @role_name[:mordred_subordinates] = MORDRED_SUBORDINATES
  end
end


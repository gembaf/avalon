class Assassin < CharactorBase
  def initialize
    super
    @id = 'assassin'
    @name = ASSASSIN
    @role_name[:merlin] = MORDRED_SUBORDINATES
    @role_name[:mordred] = MORDRED_SUBORDINATES
    @role_name[:morgana] = MORDRED_SUBORDINATES
    @role_name[:mordred_subordinates] = MORDRED_SUBORDINATES
  end
end


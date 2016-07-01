class Morgana < CharactorBase
  def initialize
    super
    @id = 'morgana'
    @name = MORGANA
    @role_name[:merlin] = MORDRED_SUBORDINATES
    @role_name[:percival] = MERLIN
    @role_name[:assassin] = MORDRED_SUBORDINATES
    @role_name[:mordred] = MORDRED_SUBORDINATES
    @role_name[:mordred_subordinates] = MORDRED_SUBORDINATES
  end
end


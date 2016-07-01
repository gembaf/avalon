class CharactorBase
  MERLIN = 'マーリン'.freeze
  PERCIVAL = 'パーシヴァル'.freeze
  ARTHUR_SUBORDINATES = 'アーサー王の忠実な部下'.freeze
  ASSASSIN = '暗殺者'.freeze
  MORDRED = 'モードレッド'.freeze
  MORGANA = 'モルガナ'.freeze
  OBERON = 'オベロン'.freeze
  MORDRED_SUBORDINATES = 'モードレッドの手下'.freeze

  attr_reader :id, :name

  def initialize
    @id = ''
    @name = ''
    @role_name = {
      merlin: '',
      percival: '',
      arthur_subordinates: '',
      assassin: '',
      mordred: '',
      morgana: '',
      oberon: '',
      mordred_subordinates: ''
    }
  end

  def display_name(role_id)
    @role_name[role_id.to_sym]
  end

  public_class_method

  def self.instance
    @instance ||= new
  end
end


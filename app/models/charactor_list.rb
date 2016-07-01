class CharactorList
  def self.all
    @all ||= {
      merlin: Merlin.instance,
      percival: Percival.instance,
      arthur_subordinates: ArthurSubordinates.instance,
      assassin: Assassin.instance,
      mordred: Mordred.instance,
      morgana: Morgana.instance,
      oberon: Oberon.instance,
      mordred_subordinates: MordredSubordinates.instance
    }
  end

  def self.justice
    @justice ||= {
      merlin: Merlin.instance,
      percival: Percival.instance,
      arthur_subordinates1: ArthurSubordinates.instance,
      arthur_subordinates2: ArthurSubordinates.instance,
      arthur_subordinates3: ArthurSubordinates.instance,
      arthur_subordinates4: ArthurSubordinates.instance,
      arthur_subordinates5: ArthurSubordinates.instance
    }
  end

  def self.evil
    @evil ||= {
      assassin: Assassin.instance,
      mordred: Mordred.instance,
      morgana: Morgana.instance,
      oberon: Oberon.instance,
      mordred_subordinates1: MordredSubordinates.instance,
      mordred_subordinates2: MordredSubordinates.instance,
      mordred_subordinates3: MordredSubordinates.instance
    }
  end
end


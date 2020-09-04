class UserRepresenter
  def initialize(rel)
    @rel = rel
  end

  attr_reader :rel

  def as_collection
    rel.map do |el|
      {
        id: el.id,
        name: el.name,
        visible: el.visible
      }
    end
  end
end

class Tree
  def initialize(root = nil)
    @root = root
  end

  # depth-first
  # def get_element_by_id(id)
  #   match = nil
  #   to_visit = [@root]
  #   until to_visit.empty?
  #     node = to_visit[0]
  #     match = node if node[:id] == id
  #     to_visit.shift
  #     to_visit = node[:children] + to_visit
  #   end
  #   match
  # end

  # breadth-first
  def get_element_by_id(id)
    match = nil
    to_visit = [@root]
    until to_visit.empty?
      node = to_visit[0]
      match = node if node[:id] == id
      to_visit.shift
      node[:children].each do |c|
        to_visit.push(c)
      end
    end
    match
  end
end
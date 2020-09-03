class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
      @name = name
      @backed_projects = []
  end

  def projects
    Project.all.select { | projects | project.backers == self }
  end
  def back_project(project)
    @backed_projects << project
    projects.each do |project|
      project.backers << self
  end
end

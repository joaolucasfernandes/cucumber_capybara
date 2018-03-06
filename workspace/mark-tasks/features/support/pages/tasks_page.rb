require_relative 'sections'

class TasksPage < SitePrism::Page
  section :topmenu, TopMenu, '.navbar'
  element :tasks_header, '.header-title h3'
  element :lista_de_tarefas, '#tasks-view'
end

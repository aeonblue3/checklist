class Checklist.Models.Task extends Backbone.Model
  paramRoot: 'task'

  defaults:
    name: null
    desc: null
    due: '0000-00-00 00:00:00'
    done: false

class Checklist.Collections.TasksCollection extends Backbone.Collection
  model: Checklist.Models.Task
  url: '/tasks'

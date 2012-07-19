# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".name-popover").each ->
    $(this).popover({})

  $("input[type=checkbox]").each ->
    $(this).change(->
      task_id = $(this).attr("data-task-id")
      $.ajax('/tasks/'+task_id, {
        type: "PUT",
        dataType: "script",
        data: {done: $(this).is(":checked")}
        success: updateStrike(task_id)
        error: (result) ->
          console.log(result)
      })
    )

  updateStrike = (task_id)->
    console.log("Success")

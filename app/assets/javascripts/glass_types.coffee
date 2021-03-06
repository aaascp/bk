# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.modal').modal()

  $('.chips-initial').material_chip({data})

  $( 'div.chips > input.input').remove()

  $('.chip').on "dblclick", (event) ->
    chipIndex =  $(event.target).index()
    chip = $('.chips-initial').find('.chip').eq(chipIndex)
    if (chip)
      $('.chips-initial').trigger('chip.select', $('.chips-initial').data('chips')[chipIndex])

  $('.chips-initial').on "chip.select", (event, chip) ->
    $('#glass_type_id').val(chip.id)
    $('#glass_type_name_edit').val(chip.tag)
    $('#edit_chip').modal('open')


  $('.chips-initial').on "chip.delete", (event, chip) ->
    $('#delete_chip_confirmation_glass_type').val(chip.id)
    $('#delete_chip_confirmation_glass_type').text(chip.tag)
    $('#destroy_glass_type_button').attr("href", "/glass_types/" + chip.id)
    $('#delete_chip_confirmation').modal('open')

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

    $('#intervention_building_id').parent().hide()
    $('#intervention_battery_id').parent().hide()
    $('#intervention_column_id').parent().hide()
    $('#intervention_elevator_id').parent().hide()

    building = $('#intervention_building_id').html()
    $('#intervention_customer_id').change ->
        customer = $('#intervention_customer_id :selected').text()
        options = $(building).filter("optgroup[label='#{customer}']").html()
        if options
            $('#intervention_building_id').html(options)
            $('#intervention_building_id').parent().show()
        else
            $('#intervention_building_id').empty()
            $('#intervention_building_id').parent().hide()

    battery = $('#intervention_battery_id').html()
    $('#intervention_building_id').change ->
        building = $('#intervention_building_id :selected').text()
        options = $(battery).filter("optgroup[label='#{building}']").html()
        if options
            $('#intervention_battery_id').html(options)
            $('#intervention_battery_id').parent().show()
        else
            $('#intervention_battery_id').empty()
            $('#intervention_battery_id').parent().hide()

    column = $('#intervention_battery_id').html()        
    $('#intervention_battery_id').change ->
        battery = $('#intervention_battery_id :selected').text()
        options = $(column).filter("optgroup[label='#{battery}']").html()
        if options
            $('#intervention_column_id').html(options)
            $('#intervention_column_id').parent().show()
        else
            $('#intervention_column_id').empty()
            $('#intervention_column_id').parent().hide()


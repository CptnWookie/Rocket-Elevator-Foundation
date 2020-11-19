# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

    $('#intervention_building_id').parent().hide()
    $('#intervention_battery_id').parent().hide()
    $('#intervention_column_id').parent().hide()
    $('#intervention_elevator_id').parent().hide()

    buildings = $('#intervention_building_id').html()
    $('#intervention_customer_id').change ->
        customer = $('#intervention_customer_id :selected').text()
        options = $(buildings).filter("optgroup[label='#{customer}']").html()
        if options
            # Set the options
            $('#intervention_building_id').html(options)
            # Add in a blank option at the top
            $('#intervention_building_id').prepend("<option value='Select Building'> Select Building </option>")
            # Ensure that the blank option is selected
            $('#intervention_building_id option:first').attr("selected", "selected");
            $('#intervention_building_id').parent().show()
        else
            $('#intervention_building_id').empty()
            $('#intervention_building_id').parent().hide()

    batteries = $('#intervention_battery_id').html()
    $('#intervention_building_id').change ->
        building = $('#intervention_building_id :selected').text()
        options = $(batteries).filter("optgroup[label='#{building}']").html()
        if options
            # Set the options
            $('#intervention_battery_id').html(options)
            # Add in a blank option at the top
            $('#intervention_battery_id').prepend("<option value='None'> None </option>")
            # Ensure that the blank option is selected
            $('#intervention_battery_id option:first').attr("selected", "selected");
            $('#intervention_battery_id').parent().show()
        else
            $('#intervention_battery_id').empty()
            $('#intervention_battery_id').parent().hide()

    columns = $('#intervention_battery_id').html()        
    $('#intervention_battery_id').change ->
        battery = $('#intervention_battery_id :selected').text()
        options = $(columns).filter("optgroup[label='#{battery}']").html()
        if options
            # Set the options
            $('#intervention_column_id').html(options)
            # Add in a blank option at the top
            $('#intervention_column_id').prepend("<option value='None'> None </option>")
            # Ensure that the blank option is selected
            $('#intervention_column_id option:first').attr("selected", "selected");
            $('#intervention_column_id').parent().show()
        else
            $('#intervention_column_id').empty()
            $('#intervention_column_id').parent().hide()

    elevators = $('#intervention_column_id').html()        
    $('#intervention_column_id').change ->
        column = $('#intervention_column_id :selected').text()
        options = $(elevators).filter("optgroup[label='#{column}']").html()
        if options
            # Set the options
            $('#intervention_elevator_id').html(options)
            # Add in a blank option at the top
            $('#intervention_elevator_id').prepend("<option value='None'> None </option>")
            # Ensure that the blank option is selected
            $('#intervention_elevator_id option:first').attr("selected", "selected");
            $('#intervention_elevator_id').parent().show()
        else
            $('#intervention_elevator_id').empty()
            $('#intervention_elevator_id').parent().hide()

    
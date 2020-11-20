# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

    # Hides the following field at load
    $('#intervention_building_id').parent().hide()
    $('#intervention_battery_id').parent().hide()
    $('#intervention_column_id').parent().hide()
    $('#intervention_elevator_id').parent().hide()

    # Set "buildings" value as a list of building ID
    buildings = $('#intervention_building_id').html()
    # If the Customer ID changes, 
    $('#intervention_customer_id').change ->
        # Set the Customer field to the selected customer_id and display the configured text (in the html form)
        customer = $('#intervention_customer_id :selected').text()

        # Set "options" value and filter the building ID in the list to display only those related to the selected customer 
        options = $(buildings).filter("optgroup[label='#{customer}']").html()

        if options
            # Set the options as described at "options"
            $('#intervention_building_id').html(options)

            # Add in an additional option at the top in "options"
            $('#intervention_building_id').prepend("<option value='Select Building'> Select Building </option>")

            # Ensure that the new option appears first and is selected
            $('#intervention_building_id option:first').attr("selected", "selected")

            # Make the next field visible
            $('#intervention_building_id').parent().show()

        else # Set the building field to empty and hide it
            $('#intervention_building_id').empty()
            $('#intervention_building_id').parent().hide()

    # ================================================ #
    # The following fields are set exactly as Buildings

    batteries = $('#intervention_battery_id').html()
    $('#intervention_building_id').change ->
        building = $('#intervention_building_id :selected').text()
        options = $(batteries).filter("optgroup[label='#{building}']").html()
        if options
            $('#intervention_battery_id').html(options)
            $('#intervention_battery_id').prepend("<option value='None'> None </option>")
            $('#intervention_battery_id option:first').attr("selected", "selected")
            $('#intervention_battery_id').parent().show()
        else
            $('#intervention_battery_id').empty()
            $('#intervention_battery_id').parent().hide()


    columns = $('#intervention_column_id').html()        
    $('#intervention_battery_id').change ->
        battery = $('#intervention_battery_id :selected').text()
        options = $(columns).filter("optgroup[label='#{battery}']").html()
        if options
            $('#intervention_column_id').html(options)
            $('#intervention_column_id').prepend("<option value='None'> None </option>")
            $('#intervention_column_id option:first').attr("selected", "selected")
            $('#intervention_column_id').parent().show()
        else
            $('#intervention_column_id').empty()
            $('#intervention_column_id').parent().hide()


    elevators = $('#intervention_elevator_id').html()        
    $('#intervention_column_id').change ->
        column = $('#intervention_column_id :selected').text()
        options = $(elevators).filter("optgroup[label='#{column}']").html()
        if options
            $('#intervention_elevator_id').html(options)
            $('#intervention_elevator_id').prepend("<option value='None'> None </option>")
            $('#intervention_elevator_id option:first').attr("selected", "selected")
            $('#intervention_elevator_id').parent().show()
        else
            $('#intervention_elevator_id').empty()
            $('#intervention_elevator_id').parent().hide()

    
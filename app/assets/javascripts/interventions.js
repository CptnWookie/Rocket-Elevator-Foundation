$(function() {

    // Send the request and update course dropdown
//     $.ajax({
//         dataType: "json",
//         cache: false,
//         url: '/interventions/get_buildings_by_customer/',
//         success: function(data) {
//         // Clear all options from course select
//             $("select#building option").remove();
//             //put in a empty default line
//             var row = "<option value=\"" + "\">" + "Select" + "</option>";
//             $(row).appendTo("select#building");
//             // Fill course select
//             $.each(data, function() {
//                 row = "<option value=\"building.id"\">" "Building" + building.id + "</option>";
//                 $(row).appendTo("select#building");
//             });
//         }
//     });

// });

$.ajax({
  url: "/intervention/get_building",
  method: "GET",
  dataType: "json",
  data: { customer: customer },
  success: function(response) {
    var buildings = response["buildings"];
    $("#building").empty();
      $("#battery").empty();
    $("#building").append("<option>Select Building</option>");
      $("#battery").append("<option>Select Battery</option>");
    for (var i = 0; i < buildings.length; i++) {
      $("#building").append(
        '<option value="' + buildings[i]["id"] +'">' + buildings[i]["id"]+" "+ buildings[i]["administrator_full_name"] +"</option>"
      );
    }
  }
});
});
$(function() {
  $('#create_new_game').on("click", function() {
    var selectedPlayers = $("#selected_players option:selected");
    console.log(selectedPlayers);
  });
})

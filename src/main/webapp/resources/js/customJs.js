$(document).ready(function () {
  $(".custom-select-container select").on("click", function () {
    $(this).parent().toggleClass("open");
  });
});

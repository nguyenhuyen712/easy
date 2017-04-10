$(document).ready(function(){

  var rating = $("#rate_vote").val() == "" ? 0 : $("#rate_vote").val();
  $('#rating-star').rateYo({
    rating: rating,
    starWidth: "40px",
    fullStar: true
  }).on("rateyo.set", function (e, data) {
    var rating = data.rating;
    $("#rate_vote").val(rating);
    $("#vote-submit").click();
  });
});

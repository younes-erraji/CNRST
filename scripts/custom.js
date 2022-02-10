$(function () {
  $(".phototheque .container > img").on("click", function () {
    if ($(this).attr("id") === "next") {
      if ($(".phototheque ul li:visible").is(":last-of-type")) {
        $(".phototheque ul li:first-of-type").show().siblings().hide();
      } else {
        $(".phototheque ul li:visible").hide().next().show();
      }
    } else {
      if ($(".phototheque ul li:visible").is(":first-of-type")) {
        $(".phototheque ul li:last-of-type").show().siblings().hide();
      } else {
        $(".phototheque ul li:visible").hide().prev().show();
      }
    }
  });
});

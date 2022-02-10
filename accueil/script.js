window.onload = function () {
  let nav = document.querySelector("nav");
  if (this.scrollY >= 214) {
    nav.classList.add("fixed");
  } else {
    nav.classList.remove("fixed");
  }
  document.querySelector(".up").onclick = function () {
    window.scrollTo(0, 0);
  };
  window.onscroll = function () {
    if (this.scrollY >= 214) {
      nav.classList.add("fixed");
    } else {
      nav.classList.remove("fixed");
    }
  };
  document
    .querySelectorAll(".container nav .content > ul > li > ul")
    .forEach(function (el, i) {
      el.style.width = document.querySelector(".content").offsetWidth + "px";
    });
};

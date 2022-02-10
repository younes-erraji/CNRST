window.onload = function () {
  let up = document.querySelector(".up"),
    intro = document.querySelector(".intro");
  if (window.scrollY > 1000) {
    up.style.display = "block";
  }
  window.onscroll = function () {
    if (window.scrollY > 1000) {
      up.style.display = "block";
    } else {
      up.style.display = "none";
    }
  };
  up.onclick = function () {
    window.scrollTo(0, 0);
  };
  if (window.innerHeight < 460) {
    intro.style.height = "auto";
  }
  window.onresize = function () {
    if (window.innerHeight < 460) {
      intro.style.height = "auto";
    } else {
      intro.style.height = "calc(100vh - 123.45px)";
    }
  };
};

window.onload = function () {
  const up = document.querySelector(".up"),
    cl = this.document.querySelector("section aside .x"),
    sub = document.querySelector("section.sublinks"),
    sublinks = document.querySelectorAll(".sublinks aside ul.links"),
    bar = document.querySelector('nav .container .bars ul.nav');
  if (window.scrollY > 1000) {
    up.style.display = "block";
  }
  window.onscroll = function () {
    if (window.scrollY > 1000) {
      up.style.display = "flex";
    } else {
      up.style.display = "none";
    }
  };
  up.onclick = function () {
    window.scrollTo(0, 0);
  };
  cl.onclick = function () {
    sub.style.left = "-244px";
  };
  document.querySelectorAll(".nav li:not(:first-child)").forEach(function (el) {
    el.addEventListener("click", function () {
      sublinks.forEach(function (elem) {
        elem.style.display = "none";
      });
      if (sub.style.left === "-244px") {
        sub.style.left = "0";
        document.getElementById(el.getAttribute("data-sub")).style.display =
          "flex";
      } else {
        sub.style.left = "-244px";
      }
    });
  });
  document.querySelector('.bars-icon').onclick = function () {
    if (bar.style.display === 'flex')
      bar.style.display = 'none';
    else {
      bar.style.display = 'flex';
    }
  };
};

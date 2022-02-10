window.onload = function () {
  const up = document.querySelector(".up"),
    cl = this.document.querySelector("section aside .x"),
    sub = document.querySelector("section.sublinks"),
    sl = document.querySelectorAll(".phototheque section .slider"),
    imc = document.querySelectorAll(".img-content"),
    show = document.querySelector(".phototheque .container .show"),
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
  sl.forEach(function (el) {
    el.addEventListener("click", function () {
      sl.forEach(function (e) {
        e.classList.remove("selected");
      });
      el.classList.add("selected");
      imc.forEach(function (ele) {
        if (ele !== imc[el.getAttribute("data-index")]) {
          ele.classList.remove("active");
        } else {
          ele.classList.add("active");
        }
      });
    });
  });
  j = 0;
  setInterval(function () {
    sl.forEach(function (e) {
      e.classList.remove("selected");
    });
    imc.forEach(function (e) {
      e.classList.remove("active");
    });
    if (j < 3) {
      imc[j + 1].classList.add("active");
      sl[j + 1].classList.add("selected");
      j++;
    } else {
      j = 0;
      imc[j].classList.add("active");
      sl[j].classList.add("selected");
    }
  }, 4000);
  document
    .querySelectorAll(".phototheque .container .img-content li img")
    .forEach(function (img) {
      img.addEventListener("click", function () {
        show.style.display = "flex";
        document.querySelector(
          ".phototheque .container .show .data"
        ).src = img.getAttribute("src");
      });
    });
  document.querySelector(
    ".phototheque .container .show .exit"
  ).onclick = function () {
    show.style.display = "none";
  };
  document.querySelector('.bars-icon').onclick = function () {
    if (bar.style.display === 'flex')
      bar.style.display = 'none';
    else {
      bar.style.display = 'flex';
    }
  };
};

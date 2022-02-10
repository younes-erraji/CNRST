sl = document.querySelectorAll(".phototheque section .slider"),
    imc = document.querySelectorAll(".img-content"),
    show = document.querySelector(".phototheque .container .show"),
j = 0;
setInterval(function () {
    sl.forEach(function (e) {
        e.classList.remove("selected");
    });
    imc.forEach(function (e) {
        e.classList.remove("active");
    });
    if (j < 2) {
        imc[j + 1].classList.add("active");
        sl[j + 1].classList.add("selected");
        j++;
    } else {
        j = 0;
        imc[j].classList.add("active");
        sl[j].classList.add("selected");
    }
}, 4000);
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
const watchtrailer = document.getElementById("watch-trailer");

const toggleTrailer = (value) => {

    if (value === "open") {
        watchtrailer.style.display = "flex";
        // window.scrollTo(0, 0);
    }
    if (value === "close") {
        watchtrailer.style.display = "none";
    }
}

// const nonscroll = (value) => {
// }

// window.addEventListener("scroll", nonscroll);
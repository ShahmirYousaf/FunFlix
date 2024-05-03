const watchtrailer = document.getElementById("watchtrailer");
const trailerVideo = document.getElementById("trailerVid");

const toggleTrailer = (value) => {

    if (value === "open") {
        watchtrailer.style.display = "flex";
        trailerVideo.play();
        // window.scrollTo(0, 0);
    }
    else if (value === "close") {
        watchtrailer.style.display = "none";
        trailerVideo.pause();
    }
}
var mySong = document.getElementById("mySong");
var icon = document.getElementById("icon");

icon.onclick = function () {
    if (mySong.paused) {
        mySong.play();
        icon.src = "pictures/btn2.png";
    }

    else {
        mySong.pause();
        icon.src = "pictures/btn1.png";
    }
}
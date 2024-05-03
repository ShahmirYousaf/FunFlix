var mySong = document.getElementById("MySong");
var icon = document.getElementById("icon");

let progress = document.getElementById("progress");

const currTime = document.querySelector('.current-time');
const songDurat = document.querySelector('.song-duration');



const formatTime = (time) => {
    let min = Math.floor(time / 60);
    if(min < 10){
        min = "0" + min;
    }
    let sec = Math.floor(time % 60);
    if(sec < 10){
        sec = "0" + sec;
    }
    return min + ":" + sec;
}

icon.onclick = function () {
    if (mySong.paused) {
        mySong.play();
        icon.src = "pictures/pause-button.png";
    }

    else {
        mySong.pause();
        icon.src = "pictures/play-button.png";
    }
}

mySong.onloadedmetadata = function(){
    progress.max = mySong.duration;
    progress.value = mySong.currentTime;
}

if(mySong.play()){
    setInterval(()=>{
        progress.value = mySong.currentTime;
        currTime.innerHTML = formatTime(mySong.currentTime);
    },500);
}

progress.onchange = function(){
    mySong.play();
    mySong.currentTime = progress.value;
    icon.src = "pictures/pause-button.png";
}
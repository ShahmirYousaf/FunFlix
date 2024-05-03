const modal = document.getElementById("modal");
const sinup = document.getElementById("sinup");
const logsinup = document.getElementById("logsinup");

const toggleModal = (value) => {

    if (value === "open") {
        toggleSinup('close');
        modal.style.display = "flex";
    }
    if (value === "close") {
        modal.style.display = "none";
    }
}

const toggleSinup = (value) => {

    if (value === "open") {
        toggleModal('close');
        sinup.style.display = "flex";
    }
    if (value === "close") sinup.style.display = "none";
}

const toggleLogSinup = (value) => {

    if (value === "open") logsinup.style.display = "flex";
    if (value === "close") {
        toggleModal('close');
        toggleSinup('close');
        logsinup.style.display = "none";
    }
}
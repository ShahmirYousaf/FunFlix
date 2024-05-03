const profile_modal = document.getElementById("profile-modal");

const toggleModal = (value) => {

    if (value === "open") {
        profile_modal.style.display = "flex";
    }
    if (value === "close") {
        profile_modal.style.display = "none";
    }
}
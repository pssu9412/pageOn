// 공지 감추기

document.addEventListener("DOMContentLoaded", function () {
            
    const hideNotice = document.getElementById("hideNotice");
    const noticeRows = document.querySelectorAll(".notice-row");

    hideNotice.addEventListener("change", function () {

        noticeRows.forEach(function (row) {

            if (hideNotice.checked) {
                row.style.display = "none";
            } else {
                row.style.display = "";
            }

        });

    });

});
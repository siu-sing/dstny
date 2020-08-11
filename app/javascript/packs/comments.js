$(document).on("turbolinks:load", function () {
    $(`.edit-button`).click(function (e) {
        e.preventDefault()
        e.stopPropagation()
        $(this).parent().prev().css("display", "block")
        $(this).hide()
        $(this).parent().prev().prev().hide()
    })
})
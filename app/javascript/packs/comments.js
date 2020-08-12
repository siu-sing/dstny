$(document).on("turbolinks:load", function () {
    $(`.edit-button`).click(function (e) {
        e.preventDefault()
        e.stopPropagation()
        console.log("here")
        // if got bugs, comment the .hide() first then use background colour to ensure select correct item
        $(this).parent().prev().prev().show()
        $(this).hide() // hides button
        $(this).parent().prev().prev().prev().hide() // hides comment
    })
})
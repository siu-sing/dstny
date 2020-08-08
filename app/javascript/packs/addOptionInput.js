/*
    Display new name and quantity on click of add more
  */
 $("#addMore").on("click", function(e) {
    e.preventDefault(); //kill default action
    let numberIdOfRow = $(".listForm .row:last-child").attr("data-id");
    let num = parseInt(numberIdOfRow) + 1;

    let html = `<div class="row mb-3" data-id="${num}" >
        <div class="col-10">
          <label>Name: </label>
          <input name="items[${num}][name]" class="form-control" />
        </div>
        <div class="col-1">
          <label>Quantity: </label>
          <input name="items[${num}][quantity]" class="form-control" type="number" />
        </div>
        <div class="col-1 stayEnd">
          <button class="btn btn-danger del"> x</button>
        </div>
      </div>`;
    $(".listForm").append(html);
  });

  /*
  Remove name and quantity on click of remove
  */
  $(".listForm").on("click", ".del", function(e) {
    e.preventDefault();
    /*
        Find the parent of the parent of the del button 
        and completely remove it from the html
    */
    $(this)
      .parent()
      .parent()
      .remove();
  });
});
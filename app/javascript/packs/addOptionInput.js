console.log('test')

const addOptionInput = ()=> {
  console.log('does it go here?')
// $(document).ready(function () {
  const createButton = document.getElementById("addBook");
  createButton.addEventListener("click", () => {

    const lastId = document.querySelector("#fieldsetContainer").lastElementChild.id; //to_get the last created child id

    const newId = parseInt(lastId, 10) + 1; //incremenet to get unique id  

    //to get previous id-1 fieldset and replace with 2
    const newFieldset = document.querySelector('[id="0"]').outerHTML.replace(/0/g,newId);

    document.querySelector("#fieldsetContainer").insertAdjacentHTML(
        "beforeend", newFieldset
    );
  });
// });
}
export { addOptionInput }
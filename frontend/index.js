document.addEventListener("DOMContentLoaded", () => {
  fetchChildren()
})

const BASE_URL = "http://127.0.0.1:3000"


function fetchChildren(){
  fetch(`${BASE_URL}/children`)
  .then(resp => resp.json())
  .then(children => {
    for(const child of children){
      let c = new Child(child)
      console.log("js obj", c)
    }
  })
}
document.addEventListener("DOMContentLoaded", () => {
  fetchChildren();
  fetchPersonalProperties();
  fetchRealProperties();
  fetchSpouses();
  fetchUsers()
})

const BASE_URL = "http://127.0.0.1:3000"


function fetchChildren(){
  fetch(`${BASE_URL}/children`)
  .then(resp => resp.json())
  .then(children => {
    for(const child of children){
      let c = new Child(child)
     
    }
  })
}

function fetchPersonalProperties(){
  fetch(`${BASE_URL}/personal_properties`)
  .then(resp => resp.json())
  .then(items => {
    for(const item of items){
      let i = new PersonalProperty(item)
    }
  })
}

function fetchRealProperties(){
  fetch(`${BASE_URL}/real_properties`)
  .then(resp => resp.json())
  .then(properties => {
    for(const property of properties){
      let p = new RealProperty(property)
    }
  })
}

function fetchSpouses(){
  fetch(`${BASE_URL}/spouses`)
  .then(resp => resp.json())
  .then(spouses => {
    for(const spouse of spouses){
      let s = new Spouse(spouse)
    }
  })
}

function fetchUsers(){
  fetch(`${BASE_URL}/users`)
  .then(resp => resp.json())
  .then(users => {
    for(const user of users) {
      console.log("rails", user)
      let u = new User(user)
      console.log("js", u)
    }
  })
}
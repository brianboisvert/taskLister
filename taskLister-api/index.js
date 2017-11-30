function getTasks() {
  fetch("http://localhost:3000/tasks").then(res => res.json()).then(json => console.log(json))
}

function getLists() {
    fetch("http://localhost:3000/lists")
      .then(res => res.json())
      .then(json => showLists(json))
}

function showLists(json){
  let h1 = document.getElementById('lists')
  let li = json.map(l => `<li> ${l.title} </li><button onclick="showDescription(${l})">See More</button>`).join('')
  let ul = `<ul> ${li} </ul>`
  h1.innerHTML += ul
}

function showDescription(title) {

  let lists = document.querySelectorAll('#lists li')
  let li = title.tasks.map(l => `<li> ${l.description} </li><br>`).join('')
  let ul = `<ul> ${li} </ul>`

  lists[title.id-1].append(ul)
}

var usersTable = document.getElementById("usersTable");

window.onloa = getUsers();

function getUsers() {
  fetch('https://jsonplaceholder.typicode.com/users')
  .then((res) => res.json())
  .then((json) => {
    for (let i = 0; i < json.length; i++) {
      usersTable.innerHTML+=`
      <tr>
      <td>${json[i].id}</td>
      <td>${json[i].name}</td>
      <td>${json[i].username}</td>
      <td>${json[i].email}</td>
      <td>${json[i].phone}</td>
      <td>${json[i].website}</td>
      <td><a href="posts.html?param=${json[i].id}"><button type="button" class="btn btn-primary btn-sm">Posts</button></a></td>
      <td><a href="todos.html?param=${json[i].id}"><button type="button" class="btn btn-primary btn-sm">Todos</button></a></td>
      </tr>
        `
    }
  })
  .catch((console) => {
    console.log(error);
  })
}
var urlwid = window.location.href;
var url = new URL(urlwid);
var idUser = url.searchParams.get("param");
var userTodos = document.getElementById("usertodos");
var userIdToNewHW = document.getElementById("userID");

window.onloa = getTodos(), getiduserTodo();

function getiduserTodo() {
    userIdToNewHW.innerHTML+= `
    
    <a href="addhw.html?param=${idUser}"><button type="button" class="btn btn-primary btn-sm">Agregar tarea</button></a>
    
    `
}

function getTodos() {
    fetch('https://jsonplaceholder.typicode.com/users/'+ idUser +'/todos')
    .then((res) => res.json())
    .then((json) => {
        for (let i = json.length -1; i >= 0; i--) {
            userTodos.innerHTML+=`
            <tr>
            <td>${json[i].userId}</td>
            <td>${json[i].id}</td>
            <td>${json[i].title}</td>
            <td>${json[i].completed}</td>
            </tr>
            `
        }
    })
    .catch((error) => {
        console.log(error);
    })
}
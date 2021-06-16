var urlwid = window.location.href;
var url = new URL(urlwid);
var idUser = url.searchParams.get("param");

var form = document.getElementById("formaddhw");

form.addEventListener('submit', function(e){
    e.preventDefault();

    var titlef = document.getElementById("title").value;
    var completedf = document.getElementById("completed");
    var idf = document.getElementById("id").value;

    if(completedf.checked == true) {
        completedf = "true";
    }else{
        completedf = "false";
    }

    fetch('https://jsonplaceholder.typicode.com/users/'+ idUser +'/todos', {
    method: 'POST',
    body: JSON.stringify({
        title: titlef,
        completed: completedf,
        userId: idf,
    }),
    headers: {
        'Content-type': 'application/json; charset=UTF-8',
    },
    })
    .then((response) => response.json())
    .then((json) => {
        alert("Title registrado ID: " + json.id + " Revisar consola");
        console.log(json);
    });
})
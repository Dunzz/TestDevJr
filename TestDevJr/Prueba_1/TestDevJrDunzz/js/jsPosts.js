var urlwid = window.location.href;
var url = new URL(urlwid);
var idUser = url.searchParams.get("param");
var userPosts = document.getElementById("userposts");

window.onloa = getPosts();

function getPosts() {
    fetch('https://jsonplaceholder.typicode.com/users/'+ idUser +'/posts')
    .then((res) => res.json())
    .then((json) => {
        for (let i = 0; i < json.length; i++) {
            
            userPosts.innerHTML+=`
            <tr>
            <td>${json[i].userId}</td>
            <td>${json[i].id}</td>
            <td>${json[i].title}</td>
            <td>${json[i].body}
                <table class="table">
                    <thead class="thead-dark" id="userpostscom${json[i].id}">
                        <tr>
                            <th scope="col">Post id</th>
                            <th scope="col">id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Body</th>
                        </tr>
                    </thead>
                </table>
            </td>
            </tr>
            `
            getComments(json[i].id);
        }
    })
    .catch((error) => {
        console.log(error);
    })
}



function getComments(postId) 
{
    fetch('https://jsonplaceholder.typicode.com/post/'+ postId +'/comments')
    .then((res2) => res2.json())
    .then((json2) => {
        for (let i = 0; i < json2.length; i++) {
            var userpostscom = "userpostscom" + postId;
            document.getElementById(userpostscom).innerHTML +=`
           
                    <tr>
                        <td>${json2[i].postId}</td>
                        <td>${json2[i].id}</td>
                        <td>${json2[i].name}</td>
                        <td>${json2[i].email}</td>
                        <td>${json2[i].body}</td>
                    </tr>
            `
        }
    })
    .catch((error) => {
        console.log(error);
    })
}
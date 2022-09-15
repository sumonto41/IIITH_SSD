function dragstartHandler(evt)
{
    evt.dataTransfer.setData("MyDraggedElementId", evt.target.id);

}
function dragoverHandler(evt)
{
    evt.preventDefault();
}
function dropHandler(evt)
{
    evt.preventDefault();
    var elementId = evt.dataTransfer.getData("MyDraggedElementId");
    evt.target.appendChild(document.getElementById(elementId));
}
function Alert()
{
    if(document.getElementById("d").value!=document.getElementById("e").value)
    {
        alert("Password doesn't match");
    }
    else
    {   
        alert("Name: "+document.getElementById("a").value+"\n"+
                "Email: "+document.getElementById("b").value+"\n"+ 
                "Username: "+document.getElementById("c").value+"\n"+
                "Team Lead: "+document.getElementById("tlead").value)
    }

}
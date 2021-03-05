document.getElementById("orszagok").addEventListener('change',vizsgal)

function vizsgal(e){
    console.log(e.target.value)
    let id=e.target.value
    /*let xhr=new XMLHttpRequest();
    xhr.open('GET','orszag.php?id='+id,true);
    xhr.addEventListener('readystatechange',()=>{
        if(xhr.readyState==4 && xhr.status==200)
            kiirat(xhr)
    })
    xhr.send();*/
    let id_jo=document.getElementById("kitalalando_id").value
    if(id==id_jo){
        document.getElementById("output").innerHTML="Talált!"
    }
    else{
        document.getElementById("output").innerHTML="Nem talált!"
    }
}

function kiirat(xhr){
    document.getElementById('output').innerHTML=xhr.responseText;
}
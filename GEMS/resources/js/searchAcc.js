export function searchAccount(){
    let input = document.getElementById('search').value
    input=input.toLowerCase();
    let x = document.getElementsByClassName('accRow');
      
    for (i = 0; i < x.length; i++) { 
        if (!x[i].id.toLowerCase().includes(input)) {
            x[i].style.display="none";
        }
        else {
            x[i].style.display="revert";                 
        }
    }
  }
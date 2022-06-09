class Principal
{
    linkPrincipal(link){
        let url="";
        //divide la cadena que venga del parametro
        //donde se encuentre "/" devolviendo asi un array
        // variable cadena se convertiria en un array que contiene la informacion
        let cadena = link.split("/");
        
        //recorremos cadena
        for (let i=0; i<cadena.length; i++){
            if (i >= 3){
                //iniciamos la variable URL con la informacion
                //de la cadena pero segun el ciclo for
                //concatenando al siguiente objeto
                url += cadena[i];                
            }
            switch(url){
                
            }
        }
    }
}
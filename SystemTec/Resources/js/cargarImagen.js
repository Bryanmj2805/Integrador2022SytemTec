class CargarImagen{
    archivo (evt, id){
        let files = evt.target.files;
        let f = files[0];
        if (f.type.match('image.*')){
            let reader = new FileReader();
            reader.onload = ((theFile) => {
                return(e)=>{
                    //se intercambia con la nueva imagen.
                    document.getElementById(id).innerHTML = ['<img class="responsive-img " src="' ,e.target.result, '" title="', escape(theFile.name), '"/>'].join('');
                }
            })(f);
            //metodo para leer la URL de la imagen
            reader.readAsDataURL(f);
        }
    }
}
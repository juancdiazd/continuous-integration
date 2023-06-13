import { fetchDetailedProductData, fetchCategoryData } from "../../api/data.js";
const categoriaID = localStorage.getItem('categoriaID');

// Obtener id de la url
const urlParams = new URLSearchParams(window.location.search);
const productId = urlParams.get('producto_id');

fetchDetailedProductData(productId)
    .then(item => {
        const data = item[0];
        console.log(data);
        document.getElementById("nombre_producto").innerText = data.producto_nombre;
        document.getElementById("descripcion_producto").innerText = data.producto_descripcion;
        //precios
        document.getElementById("precio_producto_original").innerText = data.producto_precio;
        document.getElementById("porcentaje_descuento").innerText = data.producto_descuento;
        document.getElementById("precio_producto_dcto").innerText = calcularDescuento(data.producto_precio, data.producto_descuento);

        document.getElementById("cantidad_producto").innerHTML = data.producto_cantidad;
        //imagen del producto
        const productImage = document.querySelector('#product-image');
        productImage.src = `../${data.producto_imagen}`;
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });

fetchCategoryData()
    .then(data => {
        console.log(data);
        const title = data.categoria_nombre;
        document.getElementById('link-categoria-producto').innerHTML = title;
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });

//funcion para calcular el descuento del producto
function calcularDescuento(precio_producto, porcentaje_descuento) {
    return precio_producto * (1 - (porcentaje_descuento / 100));
}

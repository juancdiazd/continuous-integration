import { fetchDetailedProductData } from "../../api/data.js";

// Get the product ID from the query string
const urlParams = new URLSearchParams(window.location.search);
const productId = urlParams.get('producto_id');

const form = document.querySelector('#form-agregar');
console.log(productId);
if (productId) {
    fetchDetailedProductData(productId)
        .then(item => {
            const data = item[0];
            const categorySelect = document.querySelector('#categoria');
            const selectedOption = categorySelect.querySelector(`option[value='${data.categoria_id}']`);
            selectedOption.selected = true;
            document.querySelector('#nombre').value = data.producto_nombre;
            document.querySelector('#descripcion').value = data.producto_descripcion;
            document.querySelector('#precio').value = data.producto_precio;
            document.querySelector('#cantidad').value = data.producto_cantidad;
            document.querySelector('#descuento').value = data.producto_descuento;
            document.querySelector('#imagen').value = data.producto_imagen;

        })
        .catch(error => console.error(error));
    form.action = `../../api/modificar_producto.php?producto_id=${productId}`;
} else {
    form.action = '../../api/agregar_producto.php';
}


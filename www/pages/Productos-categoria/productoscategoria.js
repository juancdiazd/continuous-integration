import { fetchCategoryData, fetchProductData } from "../../api/data.js";

fetchProductData()
    .then(data => {
        const productList = document.getElementById('productos-container');
        console.log(data);

        data.forEach(item => {
            const div = document.createElement('div');
            div.classList.add('product');
            div.setAttribute('data-producto-id', item.producto_id);
            div.innerHTML = `
            <img src="../${item.producto_imagen}" alt="${item.producto_nombre}">
            <h3>${item.producto_nombre}</h3>
            <div class="precie">$${item.producto_precio}</div>
            <div class="boton">detalle</div>
            `;

            productList.appendChild(div);

            const productElement = document.querySelectorAll('.product');

            productElement.forEach((producto) => {
                producto.addEventListener('click', () => {
                    window.location.href = `../Detalles/detalles.html?producto_id=${producto.dataset.productoId}`;
                });
            });
        });
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });

fetchCategoryData()
    .then(data => {
        const title = data.categoria_nombre;
        document.getElementById('titulo-categoria-1').innerHTML = title;
        document.getElementById('titulo-categoria-2').innerHTML = title;
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });

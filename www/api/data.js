// Se guarda en el almacenamiento local del navegador la categoría del producto.
const categoriaID = localStorage.getItem('categoriaID');

// función para obtener los datos del producto.
export async function fetchProductData() {
    const response = await fetch(`http://localhost/supermercado-mas-barato/api/productos.php?categoria_id=${categoriaID}`);
    const data = await response.json();
    return data;
}

// función para obtener la categoría del producto.
export async function fetchCategoryData() {
    const response = await fetch(`http://localhost/supermercado-mas-barato/api/categoria.php?categoria_id=${categoriaID}`);
    const data = await response.json();
    return data;
}

// función para obtener los detalles del producto.
export async function fetchDetailedProductData(producto_id) {
    const response = await fetch(`http://localhost/supermercado-mas-barato/api/detalles.php?producto_id=${producto_id}`);
    const data = await response.json();
    return data;
}
// función para obtener todos los productos.
export async function fetchAllProductsData() {
    const response = await fetch(`http://localhost/supermercado-mas-barato/api/allproductos.php`);
    const data = await response.json();
    return data;
}

// ELIMINAR PRODUCTOS DE LA BASE DE DATOS

export async function deleteProduct(productId) {
    try {
        const response = await fetch(`http://localhost/supermercado-mas-barato/api/eliminar_producto.php?producto_id=${productId}`, {
            method: 'DELETE'
        });
        const data = await response.json();
        alert('Producto eliminado exitosamente');
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
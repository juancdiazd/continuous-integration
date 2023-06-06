import { fetchAllProductsData, deleteProduct } from "../../api/data.js";

// Codigo para traer informacion de la tabla con los productos y renderizarla

fetchAllProductsData()
    .then(data => {
        const tableBody = document.querySelector('#tabla-productos');
        data.forEach(rowData => {
            const row = document.createElement('tr');
            Object.values(rowData).forEach((cellData, index) => {
                const cell = document.createElement('td');
                cell.textContent = cellData;
                row.appendChild(cell);
                // se añaden los botones de editar y eliminar a cada producto
                if (index === Object.keys(rowData).length - 1) {
                    const modifyCell = document.createElement('td');
                    ['Editar', 'Eliminar'].forEach(buttonText => {
                        const button = document.createElement('button');
                        button.textContent = buttonText;
                        button.addEventListener('click', () => {
                            if (buttonText === "Eliminar") {
                                deleteProduct(rowData.producto_id);
                            } else if (buttonText === "Editar") {
                                console.log(`Clicked ${buttonText} button for row:`, rowData);
                                console.log(`Edit product with ID: ${rowData.producto_id}`);
                                const urlParams = new URLSearchParams(window.location.search);
                                urlParams.set('producto_id', rowData.producto_id);
                                window.location.href = `agregar.html?${urlParams.toString()}`;
                            }
                            console.log(`Clicked ${buttonText} button for row:`, rowData);
                        });
                        modifyCell.appendChild(button);
                    });
                    row.appendChild(modifyCell);
                }
            });
            tableBody.appendChild(row);
        });
    })
    .catch(error => console.error(error));

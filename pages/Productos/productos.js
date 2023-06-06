const productCategory = document.querySelectorAll('.categoria');

productCategory.forEach(link => {
    link.addEventListener('click', e => {
        localStorage.setItem('categoriaID', link.dataset.categoriaId);
    });
});
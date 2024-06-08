function closeEditProductModal() {
    $('#editProductModal').modal('hide');
}

function saveEditProduct() {
    // Your save functionality here

    // Close the modal after saving
    $('#editProductModal').modal('hide');
}

function openEditProductModal() {
    $('#editProductModal').val('');

    $('#editProductModal').modal('show');
}
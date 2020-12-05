const addStudentsForm = document.getElementById('add_students_form');
const firstNameInput = document.getElementById('first_name_input');
const lastNameInput = document.getElementById('last_name_input');

addStudentsForm.addEventListener('submit', (e) => {
  if (!firstNameInput.value || !lastNameInput.value) {
    e.preventDefault();
    e.stopPropagation();
    alert('Please enter a first and last name for each student. 🌈');
  }
});

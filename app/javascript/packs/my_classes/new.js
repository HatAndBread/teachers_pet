const classNameForm = document.getElementById('class_name_form');
const classNameInput = document.getElementById('class_name_input');

classNameInput.addEventListener('input', () => {
  console.log(classNameInput.value);
});

const formSubmit = (e) => {
  if (!classNameInput.value) {
    e.preventDefault();
    e.stopPropagation();
    alert('Class must have a name 🌈');
  }
};
classNameForm.addEventListener('submit', formSubmit);

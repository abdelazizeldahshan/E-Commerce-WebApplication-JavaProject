document.querySelector('.img-btn').addEventListener('click', function() {
    document.querySelector('.cont').classList.toggle('s-signup')
});
const signInForm = document.getElementById("sign-in-form");
const signUpForm = document.getElementById("sign-up-form");
const emailElement = document.getElementById("email");
const passwordElement = document.getElementById("password");
const nameElement = document.getElementById("name");
const signUpEmailEelement = document.getElementById("sign-up-email");
const signUpPasswordEelement = document.getElementById("sign-up-password");

signInForm.addEventListener('submit', e => {
    e.preventDefault();
    validateEmailInput(emailElement);
    validatePasswordInput(passwordElement);
})
signUpForm.addEventListener('submit', e => {
    e.preventDefault();
    validateNameInput(nameElement);
    validateEmailInput(signUpEmailEelement);
    validatePasswordInput(signUpPasswordEelement);

})
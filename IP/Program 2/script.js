const name = document.getElementById("name");
const subject1 = document.getElementById("subject1");
const subject2 = document.getElementById("subject2");
const subject3 = document.getElementById("subject3");
const result = document.getElementById("result");
document
  .getElementById("registrationForm")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    const totalMarks =
      parseFloat(subject1.value) +
      parseFloat(subject2.value) +
      parseFloat(subject3.value);
    const cgpa = totalMarks / 30;

    result.textContent = "CGPA: " + cgpa.toFixed(2);
  });

function myFunction() {
  result.textContent = "";
}

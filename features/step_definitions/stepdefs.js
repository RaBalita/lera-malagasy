const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");

const lera = require("../../lera-malagasy.json");

function findClosestKey(timeStr, dict) {
  const [hours, minutes] = timeStr.split(":").map(Number);
  const totalMinutes = hours * 60 + minutes;

  const keys = Object.keys(dict).sort();
  for (const key of keys) {
    const [h, m] = key.split("h").map(Number);
    const keyTotalMinutes = h * 60 + m;
    if (
      keyTotalMinutes <= totalMinutes &&
      totalMinutes - keyTotalMinutes <= 29
    ) {
      return key;
    }
  }

  return keys[0];
}

When("user accesses the website lera-malagasy", async function () {
  const site_url = "https://rabalita.com/apps/lera-malagasy";
  const response = await fetch(site_url);
  this.http_status = response.status;
});

Then("it should return a status code {int}", function (int) {
  assert.strictEqual(this.http_status, int);
});

// Given(
//   "a time {string} and its successor {string}",
//   function (hh_mm, hh_mm_next) {
//     // BETTER: create time using HH:mm
//     this.hh_mm = hh_mm;
//     this.hh_mm_next = hh_mm_next;
//   },
// );

// When("live clock indicates {string} and above", function (current_time) {
//   // create time using HH:mm
//   this.current_time = current_time;
//   // assert que le current time est bien égal ou supérieur à hh_mm
// });

// When("live clock does not yet indicated {string}", function (string) {
//   // Write code here that turns the phrase above into concrete actions
//   // assert que le current time est bien inférieur à
// });

// Then("{string} is displayed", function (string) {
//   // Write code here that turns the phrase above into concrete actions
//   return "pending";
// });

// //////

When("live clock indicates <current_time>", function () {
  // Write code here that turns the phrase above into concrete actions
  return "pending";
});

When("<current_time> is equal or above {string}", function (string) {
  // Write code here that turns the phrase above into concrete actions
  return "pending";
});

When("<current_time> has not yet reached {string}", function (string) {
  // Write code here that turns the phrase above into concrete actions
  return "pending";
});

Then(
  "{string} corresponding to <current_time> is displayed",
  function (string) {
    // Write code here that turns the phrase above into concrete actions
    return "pending";
  },
);

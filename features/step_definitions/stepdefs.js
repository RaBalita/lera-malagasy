const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");

When("user accesses the website lera-malagasy", async function () {
  const site_url = "https://rabalita.com/apps/lera-malagasy";
  const response = await fetch(site_url);
  this.http_status = response.status;
});

Then("it should return a status code {int}", function (int) {
  assert.strictEqual(this.http_status, int);
});

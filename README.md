# LERA-MALAGASY

The way Malagasy people used to tell the current time when the watches were not yet common,
based on daily activities and natural events.

## Live demo

View the live clock here: [https://rabalita.com/apps/lera-malagasy](https://rabalita.com/apps/lera-malagasy).

Each Malagasy saying also includes an English translation.

## Other Usages

### In a Web Application:

Import the JSON file into your project:

```js
// ES Modules
import lera from "./lera-malagasy.json";
```

```js
// CommonJS
const lera = require("./lera-malagasy.json");
```

Access time values using the HHhMM keys:

```js
console.log(lera["00h00"]); // Output: "MISASAKALINA"
console.log(lera["12h00"]); // Output: "MITATAO VOVONANA"
```

### In a Node.js Project:

1. Place the lera-malagasy.json file in your project.
2. Load it using require or import:

```js
const lera = require("./lera-malagasy.json");
console.log(lera["06h00"]); // Output: "MIRAN'ANDRO"
```

## Data Structure

The JSON file contains an object where:

- Keys: Time slots in HHhMM format (e.g., "00h00", "01h30", etc.).
- Values: Traditional Malagasy time descriptions.

Examples:

```js
{
"00h00": "MISASAKALINA",
"01h00": "MISASAKALINA",
"01h30": "MITRENA OMBILAHY",
"02h00": "MANENO SAHONA",
...
}
```

## License

This project is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.

You are free to:

- **Share** — copy and redistribute the material in any medium or format
- **Adapt** — remix, transform, and build upon the material

The licensor cannot revoke these freedoms as long as you follow the license terms.

Under the following terms:

- **Attribution** — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- **NonCommercial** — You may not use the material for commercial purposes.
- **No additional restrictions** — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

For more details, see the [LICENSE](/LICENSE) file or visit:  
[Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/)

<p align="center">
    <img src="https://licensebuttons.net/l/by-nc/4.0/88x31.png" alt="Image" width="88" height="31" />
</p>

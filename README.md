<p align="center">
    <img src="https://raw.githubusercontent.com/dylantmarsh/monokai-vibrant/master/images/icon.png" width="80" />
    <h2 align="center" style="letter-spacing:2px;font-weight:700">MONOKAI VIBRANT (Rust)</h2>
</p>

<p align="center">A very dark and vibrant Monokai based theme - forked and modified for Rust and Dioxus</p>

> This is a fork of [s3gf4ult/monokai-vibrant](https://github.com/s3gf4ult/monokai-vibrant) with some modifications to make it work with Dioxus and Rust. We modified some colors to be better for Rust code.

**THIS IS A FORK OF A FORK TO MAKE IT WORK IN ZED**

**I MAY MAKE THIS UPSTREAM, NOT SURE, NOT TESTED IT MUCH YET**

![Monokai Vibrant Rust Example](/images/demo.png)

* 🌙 Super dark editor color scheme
* 🍭 Vibrant colors for better readability
* 💻 Italicized keywords compliments "Operator Mono" or similar fonts (optional)


## Install

1. Open the **Extensions** sidebar in VS Code.
2. Search for `Monokai Vibrant`. Choose the one by ~~**s3gf4ult**~~ **DioxusLabs**
3. Click the **Install** button
4. Go to Preferences ‣ Color Theme ‣ **Monokai Vibrant (Rust)**

## Disable Italics

If you are not using a font that does not support italics, you can add this to your `settings.json` to disable them.

```json
"editor.tokenColorCustomizations": {
  "textMateRules": [
    {
      "name": "Monokai Vibrant - No Italics",
      "scope": [
        "comment",
        "string.comment",
        "variable.language",
        "keyword",
        "storage",
        "variable.parameter"
      ],
      "settings": {
        "fontStyle": ""
      }
    }
  ]
}
```

## Extras

A long-term goal of this project is to provide color schemes for other popular applications in the `/extras` folder. A vim/nvim theme would be greatly appreciated if anyone is interested in contributing.

---

Don't forget to leave a review on the marketplace! **Enjoy!**

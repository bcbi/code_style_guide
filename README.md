# Style guideline for different languages used at BCBI

1. [Julia](#julia)
2. [JavaScript](#javascript--react)
3. [ESLint](#eslint)

## Julia
In general, follow the conventions of the [Julia language authors](http://docs.julialang.org/en/release-0.5/manual/style-guide/).

* Naming:
  * Use PascalCase for Modules and main module filename. E.g., MultivariateStats.jl
  * Use snake_case for variable and function names, as well as any other filename besides the main module file

* Indentation:
  * Use indents of 4 spaces; this is the Julia convention.

* Other:
  * Append the `!` symbol to the names of functions that modify their arguments. Good examples from the core language are `push!()` and `append!()`.

## JavaScript - React

* For JSX style, follow [Airbnb guidelines](https://github.com/airbnb/javascript/tree/master/react)
* Folder organization for a react-redux app is inspired on this [post](https://www.robinwieruch.de/tips-to-learn-react-redux/#folderOrganization). Depending on the leavel of complexity of your app, it may look something like

### For smaller projects:

```
src/
--components/
----messageItem.js
----messageList.js
--reducer.js
--actions.js
--sagas.js
```

### For larger projects

```
src/
--components/  
----messageItem/
------presenter.js (stateless part)
------spec.js (tests)
----messageList/
------container.js (Redux-connected or state)
------presenter.js (stateless part)
------spec.js
--reducer/
----index.js
----spec.js (tests)
--actions/
----index.js
----spec.js (tests)
```

<a name="eslint"/>
### ESLint installation (Atom)
</a>

Install linter-eslint through the atom package manager or the console.

```console
apm install linter-eslint
```
Install `eslint` and the relevant plugins to your local project (Airbnb eslint configurations).

```console
npm i --save-dev eslint
```

Follow npm instructions to install peer dependencies for eslint-config-airbnb. https://www.npmjs.com/package/eslint-config-airbnb

Create a `.eslintrc` configuration file.

```console
eslint init
```

Sample `.eslintrc` file (in JSON format) from Ligercat:

```json
{
  "env": {
    "browser": true,
    "commonjs": true,
    "es6": true
  },
  "extends": [
    "airbnb",
    "plugin:react/recommended",
    "eslint:recommended"
  ],
  "parserOptions": {
    "ecmaFeatures": {
      "experimentalObjectRestSpread": true,
      "jsx": true
    },
    "sourceType": "module"
  },
  "plugins": [
    "react"
  ],
  "rules": {
    "no-console": 0,
    "import/no-named-default": 0
  }
}
```

Each rule can be toggled on or off (off denoted by a 0). Refer to each plugin's documentation for info regarding values that the rule can take on.

Note from the npm installation instructions that `"extends": "airbnb"` must be included the `.eslintrc` to enforce airbnb code styles. In the case of Ligercat, some recommended rules from the react plugin and eslint were also 'extended'.

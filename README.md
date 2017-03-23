# Style guideline for different languages used at BCBI

1. [Julia](#julia)
2. [JavaScript](#javascript_react)

## Julia

* Naming:
  * Use PascalCase for Modules and main module filename. E.g., MultivariateStats.jl
  * Use snake_case for variable and function names, as well as any other filename besides the main module file


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


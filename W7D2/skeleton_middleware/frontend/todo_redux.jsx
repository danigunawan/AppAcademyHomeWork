import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  
  // store = applyMiddlewares(store, addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

// function addLoggingToDispatch(store) {
//   let dispatch = store.dispatch;
//   return (action) => {
//     console.log("old state: ", store.getState());
//     console.log("action: ", action);
//     dispatch(action);
//     console.log("new state: ", store.getState());
//   };
// }

// function addLoggingToDispatch(store) {
//   return function(next) {
//     return function (action) {
//       console.log("old state: ", store.getState());
//       console.log("action: ", action);
//       store.dispatch(action);
//       console.log("new state: ", store.getState());
//       next(action);
//     };
//   };
// }
//
// function applyMiddlewares(store, ...middlewares) {
//   let dispatch = store.dispatch;
//   middlewares.forEach(function(middleware) {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// }

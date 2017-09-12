import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';

const configureStore = (preloadedState = {}) => {
  const store = createStore(
    RootReducer,
    preloadedState,
    applyMiddleware(addLoggingToDispatch, bonusMiddleware)
  );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

export default configureStore;

function addLoggingToDispatch(store) {
  return function(next) {
    return function (action) {
      console.log("old state: ", store.getState());
      console.log("action: ", action);
      console.log("new state: ", store.getState());
      next(action);
    };
  };
}

function bonusMiddleware(store) {
  return function(next) {
    return function(action) {
      console.log("next: ", next);
      next(action);
    };
  };
}

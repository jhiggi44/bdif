import { addRoute } from 'meteor/vulcan:core';
import Home from '../components/Home';

addRoute({ name: 'home', path: '/', component: Home });
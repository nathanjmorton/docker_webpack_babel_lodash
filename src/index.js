import _ from 'lodash';
import bar from './bar';

function component() {
    const element = document.createElement('div');

    element.innerHTML = _.join(['Hello', 'webpack'], ' ');

    return element;
}

document.body.appendChild(component())

console.log(bar);



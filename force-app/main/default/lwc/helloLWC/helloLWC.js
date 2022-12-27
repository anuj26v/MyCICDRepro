import { LightningElement } from 'lwc';

export default class HelloLWC extends LightningElement {
    greeting = 'User';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}
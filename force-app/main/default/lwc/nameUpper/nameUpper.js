import { LightningElement } from 'lwc';

export default class NameUpper extends LightningElement {
    fName = "Govhar";
    lName = "Ramazanova";

    get fullUpper(){ //get method
       // return this.fName.toUpperCase() + ' ' + this.lName.toLowerCase();
       return `Name lastName: ${this.fName.toUpperCase()} ${this.lName.toUpperCase()}`; 
    }
}
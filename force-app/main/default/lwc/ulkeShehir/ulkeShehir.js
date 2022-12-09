import { LightningElement } from 'lwc';

export default class UlkeShehir extends LightningElement {
    ulke;
    shehir;
    unlu;
    handleUlke(event){
        this.ulke=event.target.value;
    }
    handleShehir(event){
        this.shehir=event.target.value
    }
    neyiUnlu(event){
        this.unlu=event.target.value
    }
}
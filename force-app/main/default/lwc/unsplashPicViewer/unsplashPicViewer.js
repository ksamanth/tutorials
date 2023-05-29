import { LightningElement, track } from 'lwc';
import makeACallToUnsplash from '@salesforce/apex/UnsplashUtility.MakeACallToUnsplash';

export default class UnsplashPicViewer extends LightningElement {
    @track myDataSet = [];
    connectedCallback() {
        makeACallToUnsplash()
            .then(response => {
                if(response) {
                    this.myDataSet = JSON.parse(response);
                }
            })
            .catch(error => {
                console.log(error);
            })
    }
}
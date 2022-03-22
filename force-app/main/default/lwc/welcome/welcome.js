import { LightningElement,track} from 'lwc';

export default class Welcome extends LightningElement {

@track  name='Test';

Update (event) {

    name= event.target.value;
    console.log(typeof(name))

}
}
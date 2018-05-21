import './main.css';
import { Main } from './Main.elm';
import registerServiceWorker from './registerServiceWorker';

const STORAGE_KEY = "MONSTEREOS";

const storageBody = localStorage.getItem(STORAGE_KEY);
const flags = !storageBody ?
  { user: { eosAccount: "" } } : JSON.parse(storageBody)



Main.embed(document.getElementById('root'), flags);

registerServiceWorker();

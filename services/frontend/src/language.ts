import {setLanguage} from "./store"

export const loadLanguage = (store: any) => {

  const language = localStorage.getItem("myLanguage")

  if (language){
    store.dispatch(setLanguage(language))
  }

}

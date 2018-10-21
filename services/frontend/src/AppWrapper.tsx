import React, { Component } from 'react';
import { IntlProvider, addLocaleData } from "react-intl";
import krLocaleData from "react-intl/locale-data/kr";
import chLocaleData from "react-intl/locale-data/ch";
import translations from "./i18n/locales"
import App from "./App"

addLocaleData(krLocaleData)
addLocaleData(chLocaleData)

class AppWrapper extends Component {
  render() {
    // get locale from url
    const locale = window.location.search.replace("?locale=","") || "en"
    const messages = translations[locale];
    return (
      <IntlProvider locale={locale} key={locale} messages={messages}>
      <App />
      </IntlProvider>
  );
  }
}

export default AppWrapper;
const path = require("path");
const manageTranslations = require("react-intl-translations-manager").default;

manageTranslations({
    messagesDirectory: path.join(__dirname, "src/i18n/messages"),
    translationsDirectory: path.join(__dirname, "src/i18n/locales/"),
    languages: ["en", "kr", "ch"] // any language you need
});
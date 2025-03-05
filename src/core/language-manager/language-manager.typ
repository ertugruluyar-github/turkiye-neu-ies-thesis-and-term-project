#import "@preview/linguify:0.4.2": set-database, linguify

/// Define base path
#let _base-path = "/src/core/"

/// Define user base path
#let _user-base-path = "/template/"

/// Define supported languages file path
#let _supported-languages-file-path = _base-path + "language-manager/supported-languages.toml"

/// Folder name that language data files saved
#let _languages-data-folder-name = "languages"

/// Define default language data base path
#let _default-language-data-base-path = _base-path + _languages-data-folder-name + "/"

/// Define user language overrides base path
#let _user-language-overrides-base-path = _user-base-path + _languages-data-folder-name + "/"

/// Load the supported languages registry
#let _supported-languages = toml(_supported-languages-file-path).supported-languages

/// Language database' data type
#let _language-database-data-type = "dict"

/// Language data definition in toml file
#let _language-data-toml-definition = "translations"

/// Function to load a specific language file
/// @param language-code (string): Language code to load language data
/// @param file-path (string): Language data file path to load language data
#let _load-language-data(language-code: none, file-path: none) = {
  if language-code in _supported-languages {
    return toml(file-path)
  }
  return (:)
}

/// Build the combined database with core languages and user overrides
/// @param default-language (string): The default language code to use if no language is specified
#let _build-language-database(default-language: none) = {
  // Define language database for linguify package
  let language-database = (
    conf: (
      default-lang: default-language,
      data_type: _language-database-data-type,
    ),
    lang: (:),
  )

  // Load each language file and add to database
  for (language-code, info) in _supported-languages {
    // Get language data toml file name with extention
    let file-name-with-extention = _supported-languages.at(language-code).file-path

    // Default language data file path
    let default-language-data-file-path = _default-language-data-base-path + file-name-with-extention

    // User language overrides data file path
    let user-language-overrides-file-path = _user-language-overrides-base-path + file-name-with-extention

    // Load default language data
    let default-language-data = _load-language-data(
      language-code: language-code,
      file-path: default-language-data-file-path,
    )

    // Get default translations if there is
    let default-language-translations = if _language-data-toml-definition in default-language-data {
      default-language-data.translations
    } else {
      (:)
    }

    // Load user language overrides data
    let user-language-overrides-data = _load-language-data(
      language-code: language-code,
      file-path: user-language-overrides-file-path,
    )

    // Get user translation overrides if there is
    let user-translation-overrides = if _language-data-toml-definition in user-language-overrides-data {
      user-language-overrides-data.translations
    } else {
      (:)
    }

    // Combine default language translations and user translation overrides (user translation overrides takes precedence because it is supplied last)
    language-database.lang.insert(
      language-code,
      default-language-translations + user-translation-overrides,
    )
  }

  // Return the language database
  return language-database
}

/// The language manager provides a consistent interface for handling translations
/// Build and init the language database
/// @param default-language (string): The default language code to use if no language is specified
#let init-language-manager(default-language: none) = {
  let language-database = _build-language-database(default-language: default-language)

  // Set the database for linguify
  set-database(language-database)
}

/// Get a translation for a key
/// @param key (string): The translation key to lookup
/// @param language-code (string): The translation key to lookup
/// @return The translated string
#let translator(
  key: none,
  language-code: auto,
) = {
  // Get the translation using linguify and return
  return linguify(key, args: auto, default: auto, from: auto, lang: language-code)
}

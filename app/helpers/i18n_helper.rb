# frozen_string_literal: true

module I18nHelper
  # Attempt to make an I18n translation,
  # but return `nil` if no translation found
  def translate(path, scope = nil)
    I18n.translate!(path, scope: scope)
  rescue I18n::MissingTranslationData
    nil
  end

  # Attempt to make an I18n translation,
  # but return `true` or `false` if no translation found
  def translate_boolean(boolean)
    I18n.translate!(boolean)
  rescue I18n::MissingTranslationData
    boolean.to_s
  end

  # Attempt to make an I18n localization,
  # but return a localized date-string with '—' in the place of numbers
  # if no localization found
  def localize_date(date)
    if date.nil?
      return I18n.localize(Date.new)
                 .gsub('01', '—')
                 .gsub('-4712', '——')
    end

    I18n.localize(date)
  end

  # Attempt to make an I18n localization,
  # but return a localized date-string with '—' in the place of date numbers
  # and '_' in the place of time numbers
  # if no localization found
  def localize_datetime(datetime)
    if datetime.nil?
      return I18n.localize(DateTime.new)
                 .gsub('01', '—')
                 .gsub('-4712', '——')
                 .gsub(/\d/, '_')
    end

    I18n.localize(datetime)
  end

  # Attempt to make an I18n localization,
  # but return a localized date-string with '_' in the place of numbers
  # if no localization found
  def localize_time_of_day(time)
    if time.nil?
      return I18n.localize(DateTime.new)
                 .remove('01/01/-4712')
                 .strip
                 .gsub(/\d/, '_')
    end

    I18n.localize(time)
        .remove('01/01/2000')
        .strip
  end
  alias localize_time localize_time_of_day
end

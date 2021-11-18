# frozen_string_literal: true

require_relative './i18n_helper'

module ToHtmlHelper
  def boolean_to_html(boolean)
    content_tag(:i,
                nil,
                class: [
                  'fa',
                  (if boolean == true
                    'fa-check'
                  elsif boolean.nil?
                    'fa-minus'
                  else
                    'fa-times'
                  end),
                  (if boolean == true
                    'text-success'
                  elsif boolean.nil?
                    'text-secondary'
                  else
                    'text-danger'
                  end)
                ])
  end

  def date_to_html(date)
    return content_tag(:time, localize_date(date)) if date.nil?

    content_tag(:time,
                localize_date(date),
                datetime: date.to_formatted_s,
                'data-original-title': date.to_formatted_s(:long_ordinal))
  end

  def datetime_to_html(datetime)
    return content_tag(:time, localize_datetime(datetime)) if datetime.nil?

    content_tag(:time,
                localize_datetime(datetime),
                datetime: datetime.to_formatted_s,
                'data-original-title': datetime.to_formatted_s(:long_ordinal))
  end

  def time_of_day_to_html(time)
    return content_tag(:time, localize_time_of_day(time)) if time.nil?

    content_tag(:time,
                localize_time_of_day(time),
                datetime: time.to_formatted_s(:time))
  end
  alias time_to_html time_of_day_to_html

  def month_year_to_html(month_year)
    return content_tag(:time, localize_date(month_year)) if month_year.nil?

    content_tag(:time,
                month_year.strftime('%Y-%m'),
                datetime: month_year.to_formatted_s,
                'data-toggle': 'tooltip',
                'title': month_year.strftime('%B %Y'))
  end

  def fullname_to_html(first:, last:, middle: nil)
    content_tag(:span, class: 'fullname') do
      safe_join([
                  content_tag(:span, first, class: 'firstname'),
                  content_tag(:span, last, class: 'lastname'),
                  (content_tag(:span, middle, class: 'middlename') if middle)
                ])
    end
  end
end

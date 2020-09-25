class PagesController < ApplicationController
  def home
    unparsed_html = Faraday.get 'https://www.linkedin.com/jobs/search?keywords=rails'
    parsed_html = Nokogiri::HTML unparsed_html.body
    jobs = parsed_html.css('a.result-card__full-card-link')
    @links = jobs.map { |job| job.attributes['href'] }
  end
end

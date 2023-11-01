# frozen_string_literal: true

class GeolocationService
  def initialize(record, geocoder = Geocoder)
    @record = record
    @geocoder = geocoder
  end

  def geocode_record
    return unless record_has_country_and_zip?

    response = @geocoder.search(geocoding_query)

    if valid_response?(response)
      geolocation = HashWithIndifferentAccess.new(response.first.data)
      update_record_coordinates(geolocation)
    else
      log_geocoding_error(response)
    end
  rescue Geocoder::Error => e
    log_geocoding_error(e)
  end

  private

  def record_has_country_and_zip?
    @record.country&.name.present? && @record.zip_code.present?
  end

  def geocoding_query
    "#{record_country_name}, #{record_zip_code}"
  end

  def record_country_name
    @record.country&.name
  end

  def record_zip_code
    @record.zip_code
  end

  def valid_response?(response)
    response&.first&.data.present?
  end

  def update_record_coordinates(geolocation)
    @record.update(latitude: geolocation[:lat], longitude: geolocation[:lon])
  end

  def log_geocoding_error(error)
    Rails.logger.error("Geolocation error: #{error.message}")
  end
end

# frozen_string_literal: true

require 'ffaker'
require 'open-uri'

class FileAttachService
  MAX_ATTEMPTS = 3
  ATTACHMENT_DELAY_TIME = 2.seconds

  def initialize(field)
    @attempts = MAX_ATTEMPTS
    attach_file(field)
  end

  def attach_file(field)
    begin
      field.attach(
        io: open(FFaker::Image.url),
        filename: generate_filename,
        content_type: 'image/jpeg'
      )

      sleep ATTACHMENT_DELAY_TIME
    rescue OpenURI::HTTPError, Errno::ENOENT => e
      retry_attachment if retry_possible?
    end
  end

  private

  def generate_filename
    "#{SecureRandom.urlsafe_base64(8)}.jpg"
  end

  def retry_attachment
    @attempts -= 1
    attach_file
  end

  def retry_possible?
    @attempts > 0
  end
end

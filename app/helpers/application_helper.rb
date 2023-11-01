# frozen_string_literal: true

module ApplicationHelper
  def tags
    [
      'Ruby',
      'Ruby on Rails',
      'Rspec',
      'Clean Code',
      'SOLID',
      'Archteture',
      'Docker',
      'Kubernets',
      'Nginx',
      'Front-End',
      'Javascript',
      'React'
    ]
  end

  def reading_time(content, words_per_minute = 200)
    content_words = content.split.size
    time = (content_words / words_per_minute).ceil
    (time > 1) ? "#{time} mins read." : "#{time} min read."
  end
end

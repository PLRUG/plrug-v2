class AddColumnYoutubeUrlAndGithubSourceLinkToTalks < ActiveRecord::Migration[7.0]
  def change
    add_column :talks, :youtube_url, :string
    add_column :talks, :github_source_link, :string
  end
end

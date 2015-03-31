class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video_title
      t.text :embed_url
    end
  end
end

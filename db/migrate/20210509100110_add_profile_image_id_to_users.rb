class AddProfileImageIdToUsers < ActiveRecord::Migration[5.2]
  def change
    t.string :profile_image_id
  end
end

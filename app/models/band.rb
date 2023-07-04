class Band < ApplicationRecord
    has_many :band_festival_relations, dependent: :destroy
  #tweetsテーブルから中間テーブルを介してTagsテーブルへの関連付け
  has_many :festivals, through: :band_festival_relations, dependent: :destroy

  mount_uploader :image, ImageUploader
end

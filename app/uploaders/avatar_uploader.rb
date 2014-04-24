class AvatarUploader < CarrierWave::Uploader::Base
  # include CarrierWave::MiniMagick
  # 
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  storage :fog

  # include CarrierWave::MimeTypes
  # process :set_content_type
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # version :user_thumb do
  #   process :resize_to_limit => [200, 200]
  # end

  # Public: Declares the file extensions allowed when uploading a photo
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
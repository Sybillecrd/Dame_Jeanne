class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  storage :file

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'
end

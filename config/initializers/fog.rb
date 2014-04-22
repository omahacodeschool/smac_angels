CarrierWave.configure do |config|
  config.fog_credentials   = {
    :provider              => ENV["CW_PROVIDER"],
    :aws_access_key_id     => ENV["CW_ACCESS"],
    :aws_secret_access_key => ENV["CW_SECRET"],
    :region                => ENV["CW_REGION"]
  }
  config.fog_directory     = ENV["CW_DIR"]
end

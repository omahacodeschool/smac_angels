CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["CW_ACCESS"],             # required
    :aws_secret_access_key  => ENV["CW_SECRET"],             # required
    :region                 => ENV["CW_REGION"]              # optional
  }
  config.fog_directory  = ENV["CW_DIR"]                      # required
end

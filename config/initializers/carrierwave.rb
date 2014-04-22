CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'REDACTED',
    :aws_secret_access_key  => 'REDACTED'
  }
  config.fog_directory  = "myawsbucket"
end
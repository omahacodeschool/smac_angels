CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV["AWS_ACCESS"],
    :aws_secret_access_key  => ENV["AWS_SECRET"]
    :region => "oregon"
  }
  config.fog_directory  = "smacangels"
end
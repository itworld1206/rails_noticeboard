CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                                         # required
    aws_access_key_id:     '',                                            # required
    aws_secret_access_key: '',                                            # required
    region:                'ap-southeast-2',                              # optional, defaults to 'us-east-1'
    endpoint:              'https://s3-ap-southeast-2.amazonaws.com'      # optional, defaults to nil
  }
  config.fog_directory  = 'brisbane0215'                                  # required
  config.fog_public     = true                                            # optional, defaults to true
end
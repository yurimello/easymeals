CarrierWave.configure do |config|
  # config.storage = 'fog/aws'                        
  config.fog_credentials = {
    provider:              'AWS',                        
    aws_access_key_id:     'AKIAJNM2EIKQ6IOFDYYA',
    aws_secret_access_key: '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',
    region:                'sa-east-1' 
    # endpoint:              's3-sa-east-1.amazonaws.com',
    # protocol:              'https' 
  }
  # config.s3_region = 'sa-east-1'
  config.fog_directory  = 'easymeals'
end
class Login < ActiveRecord::Base

  LON_ARRAY= [
    '-118.133',
    '43.913476',
    '46.6658',
    '-90.2226',
    '-79.3872',
    '-118.4143',
    '-97.0000',
    '2.1333',
    '106.8294',
    '133.0000',
    '-88.3420',
    '-0.0931'

  ]
  LAT_ARRAY = [
    '33.759',
    '-69.970241',
    '-23.4733',
    '38.5931',
    '43.6425',
    '34.0995',
    '38.0000',
    '47.9333',
    '-6.1744',
    '-27.0000',
    '44.2088',
    '51.5142'

  ]

  before_create :setup

  def setup
    self.ip = '2423423423'
    num = rand(12)
    self.lat =  LAT_ARRAY[num]
    self.lon =  LON_ARRAY[num]
  end
end

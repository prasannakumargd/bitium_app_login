class Login < ActiveRecord::Base

  LON_ARRAY= [
    '-118.133',
    '-33.865702',
    '43.913476',
    '46.6658',
    '-90.2226',
    '-79.3872',
    '-118.4143',
    '-97.0000',
    '2.1333'
  ]
  LAT_ARRAY = [
    '33.759',
    '151.207130',
    '-69.970241',
    '-23.4733',
    '38.5931',
    '43.6425',
    '34.0995',
    '38.0000',
    '47.9333'
  ]

  before_create :setup

  def setup
    self.ip = '2423423423'
    num = rand(9)
    self.lat =  LAT_ARRAY[num]
    self.lon =  LON_ARRAY[num]
  end
end

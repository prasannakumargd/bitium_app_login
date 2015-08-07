class Login < ActiveRecord::Base
  geocoded_by :ip,
		:latitude => :lat, :longitude => :lon
  after_validation :geocode

  IP_ARRAY = [
    '108.47.15.93',
    '68.5.159.51',
    '24.16.219.39',
    '210.195.4.13',
    '76.200.229.213',
    '108.0.203.201',
    '67.159.191.98',
    '69.31.114.42',
    '71.103.235.148'
  ]

  before_create :setup

  def setup
    self.ip = IP_ARRAY.rand(10)
  end
end

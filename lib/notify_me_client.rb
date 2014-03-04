# coding: utf-8

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "notify_me_client/version"
require "notify_me_client/response"
require "notify_me_client/notifier"

module NotifyMeClient
  BASE_URI = 'https://dingdong.io'
end


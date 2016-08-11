#
# Be sure to run `pod lib lint KRVideoPlayer.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "KRVideoPlayer"
  s.version          = "1.0.2"
  s.summary          = "A simple video player like weico"
  s.description      = <<-DESC
                       A video player like weico.

                       ![screenshot](kr_player.gif)


                       DESC
  s.homepage         = "https://github.com/Choujiji/KRVideoPlayer"
  s.license          = 'MIT'
  s.author           = { "Choujiji" => "zhaoji_choujiji@163.com" }
  s.source           = { :git => "https://github.com/Choujiji/KRVideoPlayer", :tag => '1.0.2' }
  s.social_media_url = 'http://weibo.com/1840543654/profile'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'KRVideoPlayer' => ['Pod/Assets/*.png']
  }
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MediaPlayer'
end

#
# Be sure to run `pod lib lint iOSMovieDB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSMovieDB'
  s.version          = '0.0.1'
  s.summary          = 'A library to connect with a www.themoviedb.org API'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A library to connect with a www.themoviedb.org API NO PRODUCTION purpose only a test to create a library and not repeat code to demo project'

  s.homepage         = 'https://github.com/diazavilasebastian/iOSMovieDB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'diazavilasebastian@gmail.com' => 'diazavilasebastian@gmail.com' }
  s.source           = { :git => 'https://github.com/diazavilasebastian/iOSMovieDB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'iOSMovieDB/Classes/**/*'
  
  # s.resource_bundles = {
  #   'iOSMovieDB' => ['iOSMovieDB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire', '~> 4.9'
end

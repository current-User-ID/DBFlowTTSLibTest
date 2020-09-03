#
# Be sure to run `pod lib lint DBFlowTTSLibTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DBFlowTTSLibTest'
  s.version          = '0.0.5'
  s.summary          = '流式语音合成SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
集成DBFlowTTSLibTest必须集成依赖SDKDBCommonLibTestSDK
                       DESC

  s.homepage         = 'https://github.com/lmhname123/DBFlowTTSLibTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李明辉' => 'liminghui@data-baker.com' }
  s.source           = { :git => 'https://github.com/lmhname123/DBFlowTTSLibTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'DBFlowTTS.framework/Classes/**/*'
  s.vendored_frameworks = 'DBFlowTTSLibTest/Classes/*.framework'
  s.subspec 'DBCommon' do |ss|
  	s.vendored_frameworks = 'Framework/*.framework'
  end
  # s.resource_bundles = {
  #   'DBFlowTTSLibTest' => ['DBFlowTTSLibTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Foundation'
  s.dependency 'DBCommonLibTest'
end

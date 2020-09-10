

Pod::Spec.new do |s|
  s.name             = 'DBFlowTTSLibTest'
  s.version          = '0.0.6'
  s.summary          = '流式语音合成SDK'
  s.description      = <<-DESC
集成DBFlowTTSLibTest必须集成依赖SDKDBCommonLibTestSDK
                       DESC

  s.homepage         = 'https://github.com/lmhname123/DBFlowTTSLibTest'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李明辉' => 'liminghui@data-baker.com' }
  s.source           = { :git => 'https://github.com/lmhname123/DBFlowTTSLibTest.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  # s.source_files = 'DBFlowTTS.framework/Classes/**/*'
  s.vendored_frameworks = 'DBFlowTTSLibTest/Classes/*.framework'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'DBCommonLibTest'
end

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "podTest"
  s.version      = "0.0.1"
  s.summary      = "Customer support in Slack"

  s.description  = <<-DESC
                   Keep your support staff where they are best suited to serve your customers. Slack
                   DESC
  s.homepage     = "https://github.com/phoenixbox/podTest"
  s.license      = "Apache License, Version 2.0"
  s.author             = "Shane Rogers"
  s.platform   = :ios, '7.0'
  s.source              = { :git => 'https://github.com/phoenixbox/podTest.git', :tag => s.version.to_s }
  s.source_files  = "FeedbackLoop", "FeedbackLoop/**/*.{h,m}"
  s.exclude_files = "FeedbackLoop/Exclude"
  s.dependency 'AFNetworking', '2.5.0'
  s.requires_arc = true
  s.frameworks = ["Foundation", "UIKit"]
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }

  # ――― Resources --
  #come back to these later――――――――――――――― #
end

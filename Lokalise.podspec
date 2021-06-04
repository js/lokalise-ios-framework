Pod::Spec.new do |s|

  s.name         = "Lokalise"
  s.version      = "0.10.2"
  s.summary      = "Lokalise framework for OTA localization for iOS."
  s.description  = <<-DESC.gsub(/^ +\|/,'')
                    |No need to resubmit your app for review to update strings or translations anymore
                    |
                    | * Over-the-air (OTA) localization
                    | * Change application language – select any language that is supported by project local localization.
                    | * Test localizations - create pre-release OTA localization bundles for your application. No need to recompile sources. Once the bundles are generated (at Lokalise Download page), see project settings to control versions and pre-release status.
                 DESC

  s.homepage     = "https://lokalise.co"
  s.license      = { :type => "Custom", :file => 'LICENSE.md' }

  s.author       = { "Fedya Levkin" => "fedya@lokalise.co" }

  s.platform     = :ios

  s.ios.deployment_target = "9.0"

  s.source = { :git => "https://github.com/lokalise/lokalise-ios-framework.git", :tag => s.version }

  s.vendored_frameworks = "Lokalise.xcframework"
  s.preserve_paths =  'Lokalise.xcframework/*'

  s.frameworks   = 'Foundation'
  s.libraries    = 'c++', 'z'

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Lokalise/"' }

end

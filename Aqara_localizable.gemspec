require File.expand_path('../lib/Aqara_localizable/gem_version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "Aqara_localizable"
  spec.version       = AqaraLocalizable::VERSION
  spec.authors       = ['zhaoxifan']
  spec.email         = ['179988305@qq.com']

  spec.summary       = 'AqaraHome 多语言插件'
  spec.description   = %(
    AqaraHome 多语言插件集成到Cocoapods.
    项目通过Pod install就可以直接从多语言平台更新项目多语言文件到项目文件中.
  ).strip.gsub(/\s+/, ' ') 
  spec.homepage      = 'https://git.aqara.com/aqara-app/sdk/script.git'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = %w[README.md LICENSE.txt bin/Aqaralocalizable] + Dir['lib/**/*.rb'] + Dir['lib/**/*.py'] + Dir['lib/**/*.xlsx'] + Dir['lib/**/*.strings'] + Dir['lib/**/*.pyc'] + Dir['lib/**/*.lproj'] + Dir['lib/**/*.sh']
  # spec.bindir        = "exe"
  spec.executables   = %w[Aqaralocalizable]
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 2.1'
  spec.add_development_dependency 'coveralls', '>= 0'
  spec.add_development_dependency 'rake', '>= 10.0'
  spec.add_development_dependency 'rspec', '>= 3.0'

  spec.add_runtime_dependency 'claide', '>= 1.0.2', '< 2.0'
  spec.add_runtime_dependency 'xcodeproj', '>= 1.19.0', '< 2.0'
  spec.add_runtime_dependency 'yaml-vfs', '>= 0.0.4'
  spec.add_runtime_dependency 'hashtable', '>= 0.0.3'
end

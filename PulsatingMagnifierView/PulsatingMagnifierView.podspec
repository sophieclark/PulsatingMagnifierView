Pod::Spec.new do |s|
  s.name             = 'PulsatingMagnifierView'
  s.version          = "0.1.1"
  s.summary          = 'A view which magnifies the view behind and pulsates for a given number of times'

  s.description      = <<-DESC
A view which displays part of the view behind it and magnifies it to a set amount and then pulsates a given number of times
                       DESC

  s.homepage         = 'https://github.com/sophieclark/PulsatingMagnifierView'
  s.license          = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author           = { 'Sophie Clark' => 'sophie.clark28@live.co.uk' }
  s.source           = { :git => 'https://github.com/sophieclark/PulsatingMagnifierView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.source_files = 'PulsatingMagnifierView/PulsatingMagnifierView.swift'

end

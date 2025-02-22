#
# Run `pod_check.sh` to ensure this is a valid spec before submitting.
# 
# Submit this version to Cocoapod with 'pod_push.sh'.
#
Pod::Spec.new do |s|
    s.name          = 'OggKit'
    s.version       = '1.3.6'
    s.summary       = 'Ogg xcframework for iOS and macOS.'
    s.description   = <<-DESC
    XCFramework to use Ogg transport layer API within Swift source.
    It runs on iOS devices, iOS simulators and macOS.
                         DESC
    s.homepage      = 'https://github.com/Phonebooth/OggKit'
    s.license       = { :type => 'MIT', :text => <<-LICENSE
    MIT License

    Copyright (c) 2021 Ybrid®, a Hybrid Dynamic Live Audio Technology
    
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
    
    # 3rd party licenses
    ## ogg
    This project makes use of the sources for ogg from [xiph.org/downloads](https://xiph.org/downloads/). 
    Ogg is licensed under the [New BSD License](https://wiki.xiph.org/XiphWiki:Copyrights).
    
        Copyright (c) 2002, Xiph.org Foundation
    
        The New BSD License states that:
    
        Redistribution and use in source and binary forms [of this work], with or without modification, are permitted provided that the following conditions are met:
        Redistributions of source code must retain the copyright notice, this list of conditions, and the following disclaimer.
        Redistributions in binary form must reproduce the copyright notice, this list of conditions, and the following disclaimer in the documentation, and/or other materials provided with the distribution.
        Neither the name of the Xiph.Org Foundation nor the names of its contributors may be used to endorse or promote products derived from this work without specific prior written permission.
        THIS WORK IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS WORK, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    
                        LICENSE
                    }
    s.author        = 'Trey Ethridge'
    s.source        = { 
    	:http => 'https://github.com/Phonebooth/OggKit/releases/download/' + s.version.to_s + '/OggKit.xcframework.zip'
    }

	
	s.ios.deployment_target = '14.0'
	s.osx.deployment_target = '10.13'
	
    s.vendored_frameworks = 'OggKit.xcframework'

end  

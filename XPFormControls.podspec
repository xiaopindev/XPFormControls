Pod::Spec.new do |s|
    s.name         = 'XPFormControls'
    s.version      = '1.0.0'
    s.summary      = 'XPFormControls provides the expansion of the form controls for iOS, simple and practical, it is recommended to use.'
    s.homepage     = 'https://github.com/xiaopn166/XPFormControls'
    s.license      = 'MIT'
    s.authors      = {'xiaopin' => '251089096@qq.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/xiaopn166/XPFormControls.git', :tag => s.version}
    s.source_files = 'XPFormControls/**/*.{h,m}'
    s.resource     = 'XPFormControls/Images/*.png'
    s.requires_arc = true
end

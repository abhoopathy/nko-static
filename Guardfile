group 'assets' do

  # Reload the browser as asset files change
  # install the Chrome plugin here: http://bit.ly/UNR8rC
  guard 'livereload', :apply_js_live => false do
    watch(%r{^source/.+\.(erb|haml)$})
    watch(%r{^source/helpers/.+\.rb$})
    watch(%r{^(public/|source/assets).+\.(css|js|html)$})
    watch(%r{^(source/stylesheets/.+\.css)\.s[ac]ss$}) { |m| m[1] }
    watch(%r{^(source/javascripts/.+\.js)\.coffee$}) { |m| m[1] }
  end

  # prevalidate coffeescript syntax on save
  guard 'coffeescript', :input => 'source/javascripts', :noop => true #, :hide_success => true

  # auto generate sprites
  # TODO
end
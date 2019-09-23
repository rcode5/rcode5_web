# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :dotenv

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :asset_hash

activate :s3_sync do |config|
  config.bucket                 = 'rcode5website'
  config.region                 = 'us-east-1'
  #config.aws_access_key_id      = ENV['AWS_ACCESS_KEY']
  #config.aws_secret_access_key  = ENV['AWS_ACCESS_SECRET']
  config.after_build            = true
end

activate :cloudfront do |config|
  #config.access_key_id      = ENV['AWS_ACCESS_KEY']
  #config.secret_access_key  = ENV['AWS_ACCESS_SECRET']
  config.distribution_id    = 'EF64K8MG953JW'
  config.after_build        = true
end


# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

# encoding: utf-8


require 'redmine'
begin
  require 'config/initializers/session_store.rb'
  rescue LoadError
end

def init_js_sequence
  Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
    next unless /\.rb$/ =~ file
    require_dependency file
  end
end

if Rails::VERSION::MAJOR >= 5
  ActiveSupport::Reloader.to_prepare do
    init_js_sequence
  end
elsif Rails::VERSION::MAJOR >= 3
  ActionDispatch::Callbacks.to_prepare do
    init_js_sequence
  end
else
  Dispatcher.to_prepare :redmine_js_sequence do
    init_js_sequence
  end
end

require File.expand_path('../../../lib/redmine/wiki_formatting/textile/redcloth3', __FILE__)
Redmine::Plugin.register :redmine_js_sequence do
  name 'Redmine Js Sequence'
  author 'Frederic Aoustin'
  description 'The redmine_js_sequence add js-sequence.js in Redmine.'
  version '0.2.0'
  url 'https://github.com/fraoustin/redmine_js_sequence'
  author_url 'https://github.com/fraoustin'
  requires_redmine :version_or_higher => '2.3.0'

  RedCloth3::ALLOWED_TAGS << "div"
end

module RedmineJsSequence
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        return javascript_include_tag('rsequence.js', :plugin => 'redmine_js_sequence') +
          javascript_include_tag('snap.svg-min.js', :plugin => 'redmine_js_sequence') +
          javascript_include_tag('underscore-min.js', :plugin => 'redmine_js_sequence') +
          javascript_include_tag('webfont.js', :plugin => 'redmine_js_sequence') +
          stylesheet_link_tag('sequence-diagram-min.css', :plugin => 'redmine_js_sequence') + 
          stylesheet_link_tag('rsequence.css', :plugin => 'redmine_js_sequence')  
      end
    end
  end
end

module RsequenceMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Adds a sequence code:\n\n" +
      "<pre>\n" +
      "{{sequence\na->b: test;\nb->;\n\n}}\n" +
      "</pre>"
    macro :sequence, :parse_args => false do |obj, args, text|
      content_tag('div', text, :class => "sequence "+args)
    end

  end

end

@@site_url = 'http://www.markbetnel.com'

task :cloud_basic do
    Puts 'Generating tag cloud...'
    require 'rubygems'
    require 'jekyll'
    include Jekyll::Filters

    options = Jekyll.configuration({})
    site = Jekyll::Site.new(options)
    site.read_posts('')

    html = ''

    site.categories.sort.each do |category, posts|

      s = posts.count
      font_size = 12 + (s*1.2);
      html << "<a href=\"#{@@site_url}/tag/#{category}/\" title=\"Pages tagged #{category}\" style=\"font-size: #{font_size}px; line-height:#{font_size}px\" rel=\"tag\">#{category}</a> "
    end

    File.open('_includes/tags.html', 'w+') do |file|
      file.puts html
    end

    puts 'Done.'
  end


task :cloud do
    puts 'Generating tag cloud...'
    require 'rubygems'
    require 'jekyll'
    include Jekyll::Filters

    options = Jekyll.configuration({})
    site = Jekyll::Site.new(options)
    site.read_posts('')
   

    html =<<-HTML
---
layout: name
title: Tags
type: A tag cloud
---

<h1>Categories</h1>

    <p>Click on a category to see the relevant pages.</p>
    HTML

    site.categories.sort.each do |category, posts|
      next if category == ".net"
      html << <<-HTML
      HTML

      s = posts.count
      font_size = 12 + (s*1.5);
      html << "<a href=\"#{@@site_url}/tag/#{category}/\" title=\"Entries tagged #{category}\" style=\"font-size: #{font_size}px; line-height:#{font_size}px\">#{category}</a> "
    end

    html << "<p>You may also wish to browse the <a href=\"#{@@site_url}/archives.html\" title=\"Archives for {{site.title}}\">archives</a>."


    File.open('tags/index.html', 'w+') do |file|
      file.puts html
    end

    puts 'Done.'
  end

desc 'Generate tags page'
task :tags do
  puts "Generating tags..."
  require 'rubygems'
  require 'jekyll'
  include Jekyll::Filters

  options = Jekyll.configuration({})
  site = Jekyll::Site.new(options)
  site.read_posts('')
  site.categories.sort.each do |category, posts|

    next if category == ".net"
    html = ''
    html << <<-HTML
---
layout: name
title: Entries within "#{category}"
type: "#{category.gsub(/\b\w/){$&.upcase}}"
---
    <h1 id="#{category}">Entries within "#{category}"</h1>
    <a href="#{@@site_url}/tags/" title="Category list {{site.title}}">&laquo; Show all categories...</a>
    HTML

    html << '<ul class="posting_list">'
    posts.each do |post|
      post_data = post.to_liquid
      html << <<-HTML
        <li><a href="#{@@site_url}/#{post.url}" rel="tag" title="Entries tagged #{post_data['title']}">#{post_data['title']}</a></li>
      HTML
    end
    html << '</ul>'

    html << '<p>You may also be interested in browsing the <a href="'+@@site_url+'/archives.html\" title="Archives for {{site.title}}">archives</a> or seeing <a href="'+@@site_url+'/tags/" title="Category list {{site.title}}">the category list</a>.'
    FileUtils.mkdir_p "tag/#{category}"
    File.open("tag/#{category}/index.html", 'w+') do |file|
      file.puts html
    end
  end
  puts 'Done.'
end

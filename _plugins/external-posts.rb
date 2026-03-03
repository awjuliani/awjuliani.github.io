require 'feedjira'
require 'httparty'
require 'jekyll'

module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      if site.config['external_sources'] != nil
        site.config['external_sources'].each do |src|
          p "Fetching external posts from #{src['name']}:"
          xml = HTTParty.get(src['rss_url']).body
          feed = Feedjira.parse(xml)
          feed.entries.each do |e|
            p "...fetching #{e.url}"
            slug = e.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
            path = site.in_source_dir("_posts/#{slug}.md")
            doc = Jekyll::Document.new(
              path, { :site => site, :collection => site.collections['posts'] }
            )
            doc.data['external_source'] = src['name'];
            doc.data['feed_content'] = e.content;
            doc.data['title'] = "#{e.title}";
            doc.data['date'] = e.published;
            doc.data['redirect'] = e.url;

            # Extract thumbnail from content or summary
            thumbnail = nil
            [e.content, e.summary].each do |source|
              if source
                img_match = source.match(/<img[^>]+src=["']([^"']+)["']/)
                if img_match
                  thumbnail = img_match[1]
                  break
                end
              end
            end
            doc.data['thumbnail'] = thumbnail if thumbnail

            # Strip HTML tags from summary for clean description text
            summary = e.summary || ''
            doc.data['description'] = summary.gsub(/<[^>]+>/, ' ').gsub(/\s+/, ' ').strip;

            site.collections['posts'].docs << doc
          end
        end
      end
    end
  end

end

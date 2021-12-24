class WordpressController < ApplicationController
    require 'net/http'
    require 'open-uri'
    
    Class WpApiPostService
    API_URL = 'https://example.com/wp-json/wp/v2/posts'
    
    def initialize(title, body, categories, tags)
      @title = title
      @body = body
      @categories = categories
      @tags = tags
    end
    
    def wp_post
      uri = URI.parse(API_URL)
    
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
      req = Net::HTTP::Post.new(uri.path)
      req.content_type = "application/json"
      req.set_form_data(article_setting)
      req.basic_auth('h.komei', 'RyuNVDhH-RJTX7h')
    
      response = http.request(req)
    
      if response.code == '201'
        Rails.logger.info('Successfully posted WP API')
      else
        Rails.logger.warn(['---Failed to WP API Post---', response.code, response.message, response.body].join("\n"))
      end
    end
    
    private
    
    def article_setting
        {
        title: @title,
        content: @body,
        status: 'draft',
        categories: @categories,
        tags: @tags
        }
    end
end

module Jekyll

  class TaskPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
      self.data['category'] = category

      # site.config[...] specified in _config.yml
      category_title_prefix = site.config['category_title_prefix'] || 'Category: '
      
      self.data['title'] = "#{category_title_prefix}#{category}"
    end
  end

  class TaskPageGenerator < Generator
    safe true

    def generate(site)
      # if we have a category_index template
      if site.layouts.key? 'category_index'
        # we're going to want a /categories directory
        dir = site.config['category_dir'] || 'categories'

        # site.categories is presumably constructed by looking at the categories from the posts yaml
        site.categories.keys.each do |category|
          site.pages << TaskPage.new(site, site.source, File.join(dir, category), category)
        end
      end
    end
  end

end
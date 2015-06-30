class Article < ActiveRecord::Base

  has_many :sections

  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true



  def to_param
    slug
  end

  private
    def build_slug(add_year=false)
      self.slug = self.title.downcase.gsub(" ", "-").gsub(/\?|\&|\=|\$|\@|\#|\,|\.|\%|\;|\:/, '')

      # make sure it's unique, if not add the year
      if Article.where(slug: self.slug).length > 1
        build_slug(true)
      end

      if add_year
        self.slug = self.title.downcase.gsub(" ", "-").gsub(/\?|\&|\=|\$|\@|\#|\,|\.|\%|\;|\:|\\|\//, '') + "-#{self.publish_date.strftime('%Y')}"
      end
    end

end

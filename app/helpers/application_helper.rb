module ApplicationHelper
  def default_meta_tags
    {
      title:       "IKE-ATSU WORKS",
      description: "池田篤士のポートフォリオサイト",
      keywords:    "デザイン,webサイト,デザインエンジニア",
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('apple-touch-icon-180x180.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      noindex: ! Rails.env.production?,
	  canonical: request.original_url,
      charset: "UTF-8",
      og: {
        title: :title,
        description: :description,
        type: "website",
        url: request.original_url,
        image: image_url("https://ikeatsu-works.s3-ap-northeast-1.amazonaws.com/ikeatsu-works-twitter-card.jpg"),
        site_name: "IKE-ATSU WORKS",
        locale: "ja_JP"
      },
      twitter: {
        site: '@ikat_de',
        card: 'summary_large_image',
        image: image_url("https://ikeatsu-works.s3-ap-northeast-1.amazonaws.com/ikeatsu-works-twitter-card.jpg")
	  },
    }
  end

  def lazy_image_tag(source, options={})
    options['data-original'] = asset_path(source)
    if options[:class].blank?
      options[:class] = 'lazy'
    else
      options[:class] = "lazy #{options[:class]}"
    end
  
    image_tag('https://ikeatsu-works.s3-ap-northeast-1.amazonaws.com/loader.gif', options)
  end  
  
end

module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    size = options[:size]
    email_hash = Digest::MD5.hexdigest(user.email)
    image_src = "https://www.gravatar.com/avatar/#{email_hash}?s=#{size}"
    image_tag(image_src, alt: user.username, class: 'rounded shadow mx-auto d-block')
  end
end

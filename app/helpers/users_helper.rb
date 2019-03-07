module UsersHelper
  def gravatar_for user
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/f647e588d18aa50c0aa761179b1f6717"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end

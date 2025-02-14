module UiHelper
  def avatar(user: Current.user, size: 10)
    if user.avatar.attached?
      image_tag user.avatar.variant(resize_to_fill: [ size * 4, size * 4 ]), class: "size-#{size} rounded-full"
    else
      tag.svg class: "size-#{size} fill-current/20", xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 512 512" do
        # !Font Awesome Pro 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2025 Fonticons, Inc.
        concat(tag.path class: "fa-secondary", opacity: ".4", d: "M32 256c0 63 26 119.9 67.9 160.6c14-55.5 64.3-96.6 124.1-96.6l64 0c59.9 0 110.1 41.1 124.1 96.6C454 375.9 480 319 480 256C480 132.3 379.7 32 256 32S32 132.3 32 256zm304-48a80 80 0 1 1 -160 0 80 80 0 1 1 160 0z")
        concat(tag.path class: "fa-primary", d: "M412.1 416.6C398.1 361.1 347.9 320 288 320l-64 0c-59.9 0-110.1 41.1-124.1 96.6C58 375.9 32 319 32 256C32 132.3 132.3 32 256 32s224 100.3 224 224c0 63-26 119.9-67.9 160.6zm-28.5 23.4C347.5 465.2 303.5 480 256 480s-91.5-14.8-127.7-39.9c4-49.3 45.3-88.1 95.7-88.1l64 0c50.4 0 91.6 38.8 95.7 88.1zM256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zm0-256a48 48 0 1 1 0-96 48 48 0 1 1 0 96zm-80-48a80 80 0 1 0 160 0 80 80 0 1 0 -160 0z")
      end
    end
  end

  def page_header(text)
    tag.header(class: "bg-white shadow-xs") do
      tag.div(class: "mx-auto max-w-7xl px-4 py-4 sm:px-6 lg:px-8") do
        tag.h1(text, class: "text-lg font-semibold text-stone-900")
      end
    end
  end
end

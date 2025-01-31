module UiHelper
  def page_header(text)
    tag.header(class: "bg-white shadow-sm") do
      tag.div(class: "mx-auto max-w-7xl px-4 py-4 sm:px-6 lg:px-8") do
        tag.h1(text, class: "text-lg font-semibold text-stone-900")
      end
    end
  end
end

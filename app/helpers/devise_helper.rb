module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| msg }.join(" and ")
    html = <<-HTML
    <div class="flash flash--alert space--both-1">
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end

module ApplicationHelper
  def format_message_errors_for(object)
    if object.errors.any?
      content_tag(:div, :class =>'alert alert-error') do
        content_tag(:ul) do
          object.errors.full_messages.each do |msg|
            concat(content_tag(:li, msg))
          end
        end
      end
    end
  end
end

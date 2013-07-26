module ApplicationHelper
  def wait(seconds)
    puts "\n\n****\n\nBefore #{time}"
    sleep seconds
    Rails.logger.info "After #{time}\n\n\n"
  end

  def time
    Time.now.strftime("%H:%M:%S")
  end
end

require 'reloader/sse'

class EunuchsController < ApplicationController
  include ActionController::Live

  def index
  end

  def simple
    100.times do |bottle|
      sleep 0.2
      response.stream.write "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer...\n<br>"
    end
    response.stream.close
  end

  def server
    # SSE expects the `text/event-stream` content type
    response.headers['Content-Type'] = 'text/event-stream'

    sse = Reloader::SSE.new(response.stream)

    begin
      loop do
        sse.write({ command: `pstree -s iTerm`,
                    time: Time.now().strftime("%H:%M:%S.%3N")},
                  event: 'refreshPstree')
        #sleep 1
      end
    rescue IOError
      # When the client disconnects, we'll get an IOError on write
    ensure
      sse.close
    end
  end

end

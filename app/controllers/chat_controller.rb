class ChatController < WebsocketRails::BaseController
  include ActionView::Helpers::SanitizeHelper
  
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
    puts "---------------\nWE OUT HERE FAM YEEZUS WALKS WITH ME\n---------------\n"
  end

  def client_connected
  end 
end
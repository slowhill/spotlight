class ChatController < WebsocketRails::BaseController
  include ActionView::Helpers::SanitizeHelper
  
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
    puts "---------------\nWE OUT HERE FAM YEEZUS WALKS WITH ME\n---------------\n"
  end

  def client_connected
  end 

  #User votes a comment up
  def upvote_comment 
  	
  end

  #user takes back their vote
  def unvote_comment
  	
  end

  #user submits a new comment
  def new_comment
  	# :channel_name should be that podcast episode's id
  	#WebsocketRails[:channel_name].trigger(:event_name, object_to_send)
  end
end
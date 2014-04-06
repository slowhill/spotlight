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
    udata = {:message => data, :stime => Time.now.strftime("%I:%M %p")}
  	broadcast_message :add_user_submission, udata
  end

  def new_comment_host
    udata = {:message => data, :stime => Time.now.strftime("%I:%M %p")}
    broadcast_message :add_host_submission, udata
  end
end
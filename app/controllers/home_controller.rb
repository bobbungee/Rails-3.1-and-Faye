require 'net/http'

class HomeController < ApplicationController
  protect_from_forgery :except => [:send_message]
  def index
  end

  def send_message
    message = params[:message]
    channel  = params[:channel]
    message = {:channel => '/'+channel, :data => params[:message], :ext => {:auth_token => FAYE_TOKEN }}
    Net::HTTP.post_form(FAYE_URI, :message => message.to_json)
    render :text => ''
  end

end

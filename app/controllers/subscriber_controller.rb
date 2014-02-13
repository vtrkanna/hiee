class SubscriberController < ApplicationController

  def new_subscriber
    @subs = Subscriber.all
    render :template => 'subscriber/new_subscriber'
  end

end

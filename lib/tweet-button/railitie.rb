module TweetButton
  class Railtie < Rails::Railtie
    initializer "tweet-button" do |app|
      ActiveSupport.on_load :action_view do
        ::ActionView::Base.send :include, TweetButton
      end
    end
  end
end

class Sidekiq::Mailer::Worker
  include Sidekiq::Worker

  def perform(mailer_class, action, params)
    byebug
    1
    mailer_class.constantize.send(action, *params).deliver!
  end
end

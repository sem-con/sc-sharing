class CampaignMailer < ApplicationMailer
    include ApplicationHelper

    def send_email(to)
        @email = to
        mail(to: to, subject: "Test")
    end
end

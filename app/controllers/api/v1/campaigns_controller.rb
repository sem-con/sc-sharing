module Api
    module V1
        class CampaignsController < ApiController
            def start
            	@participants = Store.where(schema_dri: "5RrT3ExC1Yap5zMoGVzEsX21QnAab3P6qqMDTHP8VKGJ")
            	@participants.each do |participant|
            		CampaignMailer.send_email(JSON.parse(participant.item.to_s)["email"]).deliver_now
            	end
                render plain: "",
                       status: 200
            end
        end
    end
end
class ChatbotController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def webhook
        request_data = JSON.parse(request.body.read)
        user_message = request_data['message']
    
        response = case user_message.downcase
                   when 'oi', 'olá'
                     "Olá! Como posso ajudar você?"
                   when 'como vai?', 'tudo bem?'
                     "Estou apenas um bot, mas estou bem! E você?"
                    when 'posso ir p casa agora ?'
                        "Pode e deve pelo seu esforco. Obrigado seu lindo!"
                   else
                     "Desculpe, não entendi. Poderia reformular sua pergunta?"
                   end
    
        render json: { response: response }
      end
    end
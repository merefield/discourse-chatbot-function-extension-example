# frozen_string_literal: true

module DiscourseChatbot
  class MeaningOfLifeFunction < Function

    def name
      'meaning_of_life'
    end

    def description
      I18n.t("chatbot.prompt.function.meaning_of_life.description")
    end

    def parameters
      []
    end

    def required
      []
    end

    def process(args)
      begin
        super(args)

        result = I18n.t("chatbot.prompt.function.meaning_of_life.answer", value: SiteSetting.chatbot_function_extension_meaning_of_life_value)
        {
          answer: result[0..SiteSetting.chatbot_function_response_char_limit],
          token_usage: 0
        }
      rescue
        {
          answer: I18n.t("chatbot.prompt.function.meaning_of_life.error"),
          token_usage: 0
        }
      end
    end
  end
end

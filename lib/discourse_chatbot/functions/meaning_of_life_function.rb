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

        return I18n.t("chatbot.prompt.function.meaning_of_life.answer", value: SiteSetting.chatbot_function_extension_meaning_of_life_value)
      rescue
        I18n.t("chatbot.prompt.function.meaning_of_life.error")
      end
    end
  end
end

# frozen_string_literal: true
# name: discourse-chatbot-function-extension-example
# about: an example plugin that adds additional functions to the Discourse Chatbot
# version: 1.0.0
# authors: merefield
# url: https://github.com/merefield/discourse-chatbot-function-extension-example

PLUGIN_NAME = "discourse-chatbot-function-extension-example".freeze

after_initialize do
  %w(
    ../lib/discourse_chatbot/functions/meaning_of_life_function.rb
  ).each do |path|
    load File.expand_path(path, __FILE__)
  end
end

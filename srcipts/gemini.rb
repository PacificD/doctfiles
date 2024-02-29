#!/usr/bin/env ruby

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title google gemini 
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🤖 
# @raycast.packageName gemini
# @raycast.needsConfirmation false
# @raycast.argument1 { "type": "text", "placeholder": "Prompt" }

require 'json'
require 'net/http'
require 'uri'

RED = 31
YELLOW = 33
CYAN = 36

token = ''
proxy = ''
GOOGLE_API ="https://generativelanguage.googleapis.com"

begin
  env_file = File.read('.env')

  env_file.each_line do |line|
    key, value = line.split('=').map(&:strip)
  
    if key == 'TOKEN'
      token = value
    elsif key == 'PROXY'
      proxy = value
    end
  end
rescue Errno::ENOENT
  puts "\e[#{RED}mError: .env file not found.\e[0m"
rescue
  puts "\e[#{RED}mError: Unable to read .env file.\e[0m"
else
  has_error = false
  if token.empty?
    puts "\e[#{RED}mError: TOKEN variable not found in .env file.\e[0m"
    has_error = true
  end
  if proxy.empty?
    proxy = GOOGLE_API
  end
  if has_error
    exit(1)
  end
end

req_body = { "contents" => [{ "parts" => [{ "text" => ARGV[0] }] }] }.to_json 
uri = URI("#{proxy}/v1beta/models/gemini-pro:generateContent?key=#{token}")
req = Net::HTTP::Post.new(uri)
req.add_field('Content-Type', 'application/json')
req.body = req_body 
req_options = {
  use_ssl: uri.scheme == 'https'
}
res = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(req)
end

result = JSON.parse(res.body)
if res.code == '200'
  success_response = result['candidates'][0]['content']["parts"][0]["text"]
  puts "\e[#{CYAN}m#{success_response}\e[0m"
else if res.code == '400'
  error_message = "Error message: #{result['error']['message']}"
  puts_message = "Failed sending requests with status code: #{res.code}"
  puts "\e[#{YELLOW}m#{puts_message}\e[0m"
  puts "\e[#{RED}m#{error_message}\e[0m"
  end
end

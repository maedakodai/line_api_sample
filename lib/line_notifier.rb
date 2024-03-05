module LineNotifier
  require 'net/http'
  require 'uri'
  require 'json'

  def self.send_line_notification(line_user_id, message)
    uri = URI.parse("https://api.line.me/v2/bot/message/push")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    request["Authorization"] = "Bearer #{ENV['LINE_CHANNEL_TOKEN']}"

    request.body = {
      to: line_user_id,
      messages: [
        {
          type: 'text',
          text: message
        }
      ]
    }.to_json

    response = http.request(request)
    puts response.body # エラーがあればコンソールに出力します。
  end
end
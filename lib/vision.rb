require 'base64'
require 'json'
require 'net/https'
module Vision
  class << self
    def get_image_data(image_file)
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_VISION_API_KEY']}"
      # 画像をbase64にエンコード
      base64_image = Base64.encode64(open("#{Refile.backends['store'].directory}/#{image_file.id}").read)
      # APIリクエスト用のJSONパラメータ
      params = {
        requests: [{
          image: {
            content: base64_image,
          },
          features: [
            {
              type: 'LABEL_DETECTION',
            },
          ],
        }],
      }.to_json
      # Google Cloud Vision APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)
      # APIレスポンス出力
      p response.body
      JSON.parse(response.body)['responses'][0]['labelAnnotations'].pluck('description').take(5)
    end

    def get_data(text)
      api_url = "https://language.googleapis.com/v1beta1/documents:analyzeSentiment?key=#{ENV['GOOGLE_NATURAL_LANGUAGE_API_KEY']}"
      # APIリクエスト用のJSONパラメータ
      params = {
        document: {
          type: 'PLAIN_TEXT',
          content: text,
        },
      }.to_json
      # Google Cloud Natural Language APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)
      # APIレスポンス出力
      JSON.parse(response.body)['documentSentiment']['score']
    end
  end
end

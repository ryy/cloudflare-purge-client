module Cloudflare
  module Purge
    module PurgeFileByUrl
      # Granularly remove one or more files from Cloudflare's cache either by specifying URLs.
      # https://api.cloudflare.com/#zone-purge-files-by-url
      def purge_file_by_url(files:)
        uri = URI.parse("https://api.cloudflare.com/client/#{Cloudflare::Purge::ApiVersion::VERSION}/zones/#{config.zone_id}/purge_cache")
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true

        body = { files: files }

        headers = {
          'X-Auth-Email': config.email,
          'X-Auth-Key': config.auth_key,
          'Content-Type': "application/json",
        }

        response = http.post(uri.path, body.to_json, headers)

        parse_response = JSON.parse(response.body)

        raise StandardError.new "Failed purge file by url: #{parse_response}" unless response.code == "200"
        raise StandardError.new "Failed purge file by url: #{parse_response}" unless parse_response["success"]
      end
    end
  end
end
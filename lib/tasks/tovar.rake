require 'open-uri'
require 'nokogiri'
require "net/http"
require "uri"
# encoding: UTF-8

namespace :tovar do
  desc "TODO"
  task parse: :environment do
  	Tovar.all.each { |tovar|  
  		puts "parse #{tovar.name}"
  		tovar.alternatives.each { |e|  
  			puts "alternative #{e.url}"
  			if(e.url != nil)

  			#	result = open(e.url, 
  			#		"User-Agent" => "Mozilla/5.0 (Macintosh; Intel) Gecko/20100101 Firefox/59.0",
  			#		"Upgrade-Insecure-Requests" => '1',
  			#		"Host" => "polikom.org",
  			#		"Connection" => "keep-alive",
  			#		"Cache-Control" => "max-age=0",
  			#		"Accept-Language" => "ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3",
  				#	"Accept-Encoding" => "gzip, deflate",
  				#	"Accept" => "text/html,application/xhtml+xm…plication/xml;q=0.9,*/*;q=0.8"


  				#	).read()
 

  				#puts detect_encoding(result)

				uri = URI.parse(e.url)
				http = Net::HTTP.new(uri.host, uri.port)

				request = Net::HTTP::Get.new(uri.request_uri)
				request["User-Agent"] = "My Ruby Script"
				request["Accept"] = "text/html,application/xhtml+xm…plication/xml;q=0.9,*/*;q=0.8"
				#request["Accept-Encoding"] = "gzip, deflate"
				request["Accept-Language"] = "ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3"
				request["Cache-Control"] = "max-age=0"
				request["Connection"] = "keep-alive"
				request["Cookie"] ="331e98f31c92a5120bce3bf47629a027830799390853585; _ym_isad=2"
				request["Host"] = "polikom.org"
				request["Upgrade-Insecure-Requests"] = 1
				request["User-Agent"] = "Mozilla/5.0 (Macintosh; Intel) Gecko/20100101 Firefox/59.0"
				request["Content-Type"] = 'text/plain; charset=utf-8'


				response = http.request(request)



				#puts response.code
			#	content = response.body.force_encoding("UTF-8").encode('UTF-8')

				#puts content

				doc = Nokogiri::HTML(response.body.force_encoding("UTF-8").encode('UTF-8'), nil, 'UTF-8')

				#puts e.xpath

				xpath = doc.xpath('/html/body/div[2]/div/div/div[2]/div/div[2]/div/section[1]/div/div/div/div/div[2]/div/div/table/tbody/tr[5]/td[4]/span[2]').text



				value = xpath.sub!(',','.').to_f

				e.update(:value => value)
				# /html/body/div[2]/div/div/div[2]/div/div[2]/div/section[1]/div/div/div/div/div[2]/div/div/table/tbody/tr[5]/td[4]/span[2]
				#doc.xpath('/html/body/div[2]/div/div/div[2]/div/div[2]/div/section[1]/div/div/div/div/div[2]/div/div/table/tbody/tr[5]/td[4]/span[2]//div').each do |link|
				#  puts link.content
				#end

  			end

  		}
  	}
  end

end

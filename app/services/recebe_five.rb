class RecebeFive
    require 'net/http'
    require 'json'

    def prox_hours(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&APPID=47eea82303cf3b327239995184d03037"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
    
        dados = [];
        retorno[:List].each do |hour|
            dados << {hora: horario[:dt],clima:{temperatura: hour[:main][:temp]}}
        end      
        dados;
    end   

            
        
    
end        
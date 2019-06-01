class RecebeTemp
    require 'net/http'
    require 'json'

    def buscar(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=47eea82303cf3b327239995184d03037&units=metric"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        if retorno["message"]
            return {message: "cidade não existe"}
        else
            retorno["main"]["temp"]

            novoRetorno = {"temperatura": retorno["main"]["temp"],
                            "pressao": retorno["main"]["pressure"],
                            "humidade": retorno["main"]["humidity"],
                            "temperatura maxima": retorno["main"]["temp_max"],
                            "temperatura minima": retorno["main"]["temp_min"],
                            "vento": retorno["wind"]["speed"],
                            "rajada": retorno["wind"]["deg"],
                            "nascer": Time.at(retorno["sys"]["sunrise"]),
                            "por do sol": Time.at(retorno["sys"]["sunset"])
                        }
                   
        end

    end
end             
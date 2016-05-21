require 'unirest'

#.d888 888                                                       888    d8b 888 888
#d88P"  888                                                       888    Y8P 888 888
#888    888                                                       888        888 888
#888888 888  8888b.   .d88b.   .d88b.  88888b.   .d88b.  .d8888b  888888 888 888 888  888  8888b.
#888    888     "88b d88P"88b d88""88b 888 "88b d88""88b 88K      888    888 888 888 .88P     "88b
#888    888 .d888888 888  888 888  888 888  888 888  888 "Y8888b. 888    888 888 888888K  .d888888
#888    888 888  888 Y88b 888 Y88..88P 888 d88P Y88..88P      X88 Y88b.  888 888 888 "88b 888  888
#888    888 "Y888888  "Y88888  "Y88P"  88888P"   "Y88P"   88888P'  "Y888 888 888 888  888 "Y888888
#                        888          888
#                   Y8b d88P          888
#                    "Y88P"           888
# http://patorjk.com/software/taag/#p=display&v=1&f=Colossal&t=flagopostilka


#for DEBUG
# puts ARGV.length
# puts ARGV

if ARGV.length < 3 && ARGV.length > 4
    abort("n0n0n0n0, 17'5 cr4p")
end

$type = ARGV[0]                                                    #g / p
$url = ARGV[1]                                                     #http://host:port/path/file.ext
$data = Hash[ARGV[2].split(",").collect{|x| x.strip.split("=")}]   #name=value,name2=value2
$cookie = (ARGV.length == 4) ? begin ARGV[3].gsub ",",";" end : "" #name=value,name2=value2

def sender()
    if $type == "p"
        response = Unirest.post $url, headers:{ "Cookie" => $cookie }, parameters:$data
    else
        response = Unirest.get $url, headers:{ "Cookie" => $cookie }, parameters:$data
    end
    print response.raw_body
end

sender()

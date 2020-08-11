import sys
from googletrans import Translator

argv = sys.argv
source = argv[1]
translator = Translator(service_urls=['translate.google.cn'])
text = translator.translate(source,src='en',dest='zh-cn').text
print(text)

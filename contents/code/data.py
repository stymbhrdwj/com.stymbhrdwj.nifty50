import urllib3
from bs4 import BeautifulSoup

url = 'https://www.google.com/finance/quote/NIFTY_50:INDEXNSE'
response = urllib3.request(url=url, method='GET')

html_content = str(response.data)
soup = BeautifulSoup(html_content, 'html.parser')

val = soup.find('div', class_='YMlKec fxKbKc').getText()
percent = soup.find('div', class_='JwB6zf').getText()
points = soup.find('span', class_='P2Luy Ebnabc').getText()

if points[0] == '-':
    arrow = '🡇'
else:
    arrow = '🡅'
    
mainText = val
subText = points + " (" + percent + ") " + arrow
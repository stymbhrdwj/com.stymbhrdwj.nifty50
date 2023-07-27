import urllib3

url = 'https://www.google.com/finance/quote/NIFTY_50:INDEXNSE'
response = urllib3.request(url=url, method='GET')

page = str(response.data)
print(page)
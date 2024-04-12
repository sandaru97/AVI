import requests
from bs4 import BeautifulSoup

def get_stock_data(stock_code):
    url = f"https://www2.asx.com.au/markets/company/{stock_code}"
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        data = {}
        # Get the company name
        company_name = soup.find('h1', class_='data-section-header__title').text.strip()
        data['Company Name'] = company_name
        # Get the latest price
        latest_price = soup.find('td', class_='overview-data__value').text.strip()
        data['Latest Price'] = latest_price
        # Get other data you need similarly
        # For example, you might want to get data from other sections of the page
        
        return data
    else:
        print(f"Failed to retrieve data for stock code: {stock_code}")
        return None

if __name__ == "__main__":
    stock_code = input("Enter ASX stock code: ").upper()
    stock_data = get_stock_data(stock_code)
    if stock_data:
        print("Stock Data:")
        for key, value in stock_data.items():
            print(f"{key}: {value}")
    else:
        print("No data found.")

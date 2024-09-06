from selenium import webdriver
from selenium.webdriver.chrome.options import Options

chrome_options = Options()
chrome_options.add_argument("--headless")  # ヘッドレスモードを追加
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--disable-dev-shm-usage")
chrome_options.add_argument("--disable-gpu")
chrome_options.add_argument("--window-size=1920,1080")
chrome_options.add_argument("--remote-debugging-port=9222")  # 追加

# WebDriver の起動
driver = webdriver.Chrome(options=chrome_options)

# Webページを開く
driver.get("https://den2k6.github.io/actions_aws_deploy/")

print(driver.title)

# 終了
driver.quit()

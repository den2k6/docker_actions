""" selenium on docker container """

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options

TARGET_URL = "https://den2k6.github.io/actions_aws_deploy/"


def test_selenium(url):
    """run selenium"""

    # set up
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--no-sandbox")
    # chrome_options.add_argument("--disable-dev-shm-usage")
    # chrome_options.add_argument("--disable-gpu")
    # chrome_options.add_argument("--window-size=1920,1080")
    # chrome_options.add_argument("--remote-debugging-port=9222")

    driver = webdriver.Chrome(options=chrome_options)

    # exec selenium
    driver.get(url)

    print(f"title:   {driver.title}")
    h1_text = driver.find_element(By.TAG_NAME, "h1").text
    print(f"h1 text: {h1_text}")

    driver.quit()


if __name__ == "__main__":
    test_selenium(TARGET_URL)

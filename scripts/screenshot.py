# -*- coding: utf-8 -*-
import time
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from pyvirtualdisplay import Display

if __name__ == "__main__":
    display = Display(visible=0, size=(1920, 1200))
    display.start()
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-setuid-sandbox")
    driver = webdriver.Chrome(chrome_options=chrome_options, executable_path='/usr/bin/chromedriver')
    driver.get('https://www.baidu.com/')
    driver.save_screenshot('/scripts/test.png')

    driver.close()
    driver.quit()
    display.stop()
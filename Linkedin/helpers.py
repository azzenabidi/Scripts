import openpyxl
import time     
from selenium import webdriver
from selenium.common.exceptions import UnexpectedAlertPresentException
from selenium.webdriver.common.keys import Keys


PATH = "/home/azzen/Desktop/Marketer/automation/chromedriver"
options = webdriver.ChromeOptions()
options.add_argument("--disable-notifications")
options.add_argument("--headless")  
     
    # to open chrome webbrowser and maximize the window
driver = webdriver.Chrome(executable_path=PATH, chrome_options=options)
driver.maximize_window()
     
    #Implicit Wait when element is taking time to load
driver.implicitly_wait(20)    

def auth(email,password):

    account_credentials(email,password)
    # connect to the specific ip address
    driver.get("http://www.linkedin.com")
     
    # Login to Linkedin
    driver.find_element_by_name("session_key").clear()
    driver.find_element_by_name("session_key").send_keys(email)
    driver.find_element_by_name("session_password").clear()
    driver.find_element_by_name("session_password").send_keys(password)
    driver.find_element_by_class_name("sign-in-form__submit-btn").click()
    time.sleep(5)
    



def send_msg_to_one(name,profile_url,msg):
    driver.get(profile_url)
    driver.find_element_by_class_name("pv-s-profile-actions--message").click()  
    driver.find_element_by_xpath("//div[@contenteditable='true']").send_keys("Hey "+name+","+msg)
    driver.find_element_by_class_name("msg-form__send-button").click()

    # Waiting time 
    time.sleep(5) 

def send_one_msg_to_many(msg,spreadsheet):
    print ("send a msg to spreadsheet list")    

def send_many_msgs_to_many(msg):
    print("send personalized msgs to a spreadsheet list")

def account_credentials(email,password):
    email_address = email
    pwd = password
    tab = [email,pwd]
    return tab

def save_scr(link,source):
    driver.get(link)
    driver.save_screenshot(source)





    
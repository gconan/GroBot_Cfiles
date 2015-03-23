/*
  WiFi Web Server
 
 A simple web server that shows the value of the analog input pins.
 using a WiFi shield.
 
 This example is written for a network using WPA encryption. For
 WEP or WPA, change the Wifi.begin() call accordingly.
 
 Circuit:
 * WiFi shield attached
 * Analog inputs attached to pins A0 through A5 (optional)
 
 created 13 July 2010
 by dlf (Metodo2 srl)
 modified 31 May 2012
 by Tom Igoe
 
 */

#include <SPI.h>
#include <WiFi.h>
#include <WiFiClient.h>
#include <WiFiServer.h>

#define MAX_HTTP_GET_LEN 256

const char ap_ssid[] = "Grobot";
const char ap_pswd[] = "HydroChronic";
const int ap_security = 2;

// your network name also called SSID
char* ssid = "WIFIVE";
// your network password
char* password = "Namluhcs1";
// your network key Index number (needed only for WEP)
char* security = "None";
int keyIndex = 0;

char htmlHeader[] = "HTTP/1.1 200 OK"
                    "Content-Type: text/html"
                    "Connection: close";

char webpage[] =  "<!DOCTYPE HTML>\n"
                  "<html>\n"
                  "<form>\n"
                  "SSID:<br>\n"
                  "<input type=\"text\" name=\"ssid\">\n"
                  "<br>\n"
                  "Password:<br>\n"
                  "<input type=\"text\" name=\"password\">\n"
                  "<br>\n"
                  "Security:<br>\n"
                  "<select name=\"security\">\n"
                  "  <option value=\"tkip\">TKIP (WPA)</option>\n"
                  "  <option value=\"wep\">WEP</option>\n"
                  "  <option value=\"ccmp\">CCMP (WPA)</option>\n"
                  "  <option value=\"none\">None</option>\n"
                  "  <option value=\"auto\">Auto</option>\n"
                  "</select>\n"
                  "<input type=\"submit\" value=\"Submit\">"
                  "</form>\n"
                  "</html>";

WiFiServer server(80);

void setup() {
  Serial.begin(115200);      // initialize serial communication
  pinMode(RED_LED, OUTPUT);      // set the LED pin mode
  
  Serial.print("Setting up Access Point named: ");
  Serial.println(ap_ssid);
  Serial.print("AP uses WPA and password is: ");
  Serial.println(ap_pswd);
  
  WiFi.beginNetwork((char *)ap_ssid, (char *)ap_pswd);
  while (WiFi.localIP() == INADDR_NONE) {
    // print dots while we wait for the AP config to complete
    Serial.print('.');
    delay(300);
  }
  Serial.println();
  Serial.println("AP active.");
  
  /*
  // attempt to connect to Wifi network:
  Serial.print("Attempting to connect to Network named: ");
  // print the network name (SSID);
  Serial.println(ssid); 
  // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
  WiFi.begin(ssid, password);
  while ( WiFi.status() != WL_CONNECTED) {
    // print dots while we wait to connect
    Serial.print(".");
    delay(300);
  }

  Serial.println("\nYou're connected to the network");
  Serial.println("Waiting for an ip address");

  while (WiFi.localIP() == INADDR_NONE) {
    // print dots while we wait for an ip addresss
    Serial.print(".");
    delay(300);
  }*/

  // you're connected now, so print out the status  
  printWifiStatus();

  Serial.println("Starting webserver on port 80");
  server.begin();                           // start the web server on port 80
  Serial.println("Webserver started!");
}

bool credsFound = false;

void loop() {
  // listen for incoming clients
  WiFiClient client = server.available();
  if (client) {
    Serial.println();
    Serial.println("new client");
    // an http request ends with a blank line
    boolean currentLineIsBlank = true;
    credsFound = false;
    
    char line[MAX_HTTP_GET_LEN];
    memset(line,0,MAX_HTTP_GET_LEN);
    int index = 0;
    
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        Serial.write(c);
        // if you've gotten to the end of the line (received a newline
        // character) and the line is blank, the http request has ended,
        // so you can send a reply
        if (c == '\n' && currentLineIsBlank) {
          // send a standard http response header
          client.println(htmlHeader);
          client.println();
          client.println(webpage);
          break;
        }
        if (c == '\n') {
          if(parseCredentials(line)) {t
            credsFound = true;
          }
          memset(line,0,MAX_HTTP_GET_LEN);
          index = 0;
          // you're starting a new line
          currentLineIsBlank = true;
        }
        else if (c != '\r') {
          // you've gotten a character on the current line
          currentLineIsBlank = false;
          if(index < MAX_HTTP_GET_LEN-1)
            line[index++] = c;
        }
      }
    }
    // give the web browser time to receive the data
    delay(1);

    // close the connection:
    client.stop();
    Serial.println("client disonnected");
    
    if(credsFound) {
     Serial.println(); 
     Serial.println("Security credentials updated:");
     Serial.print("SSID = ");
     Serial.println(ssid);
     Serial.print("Password = ");
     Serial.println(password);
     Serial.print("Security = ");
     Serial.println(security);
     Serial.println();
    }
  }
}

bool parseCredentials(char* line) {
  int tokens;
  char** split = splitLine(line," /?&",&tokens);
  bool credentialsFound = false;
  if(strcmp(split[0],"GET") == 0) {
    Serial.println("Found Get Request");
    for(int i = 1; i < tokens; i++) {
      int inner_tokens;
      char** token_split = splitLine(split[i],"=",&inner_tokens);
      if(inner_tokens == 2) {
        if(strcmp(token_split[0],"ssid") == 0) {
          Serial.println("Found ssid");
          //delete[] ssid;
          ssid = token_split[1];
          credentialsFound = true;
        }
        if(strcmp(token_split[0],"password") == 0) {
          Serial.println("Found password");
          //delete[] password;
          password = token_split[1];
          credentialsFound = true;
        }
        if(strcmp(token_split[0],"security") == 0) {
          Serial.println("Found security");
          //delete[] security;
          security = token_split[1];
          credentialsFound = true;
        }
      }
      for(int i = 0; i < inner_tokens; i++) {
       //delete[] token_split[i];
      }
      //delete[] token_split;
    }
  }
  for(int i = 0; i < tokens; i++) {
    //Serial.println(split[i]);
    delete[] split[i];
  }
  delete[] split;
  return credentialsFound;
}

void printWifiStatus() {
  // print the SSID of the network you're attached to:
  Serial.print("Network Name: ");
  Serial.println(WiFi.SSID());

  // print your WiFi shield's IP address:
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // print the received signal strength:
  long rssi = WiFi.RSSI();
  Serial.print("signal strength (RSSI):");
  Serial.print(rssi);
  Serial.println(" dBm");
}

/* Purpose: Splits line by spaces and commas */
char** splitLine(char* line, char* delims, int* numTokens) {
	char** split;
	char* token;
	int size;
	int tokenSize;
	int index;
	int startIndex;
	int tokenIndex;
	char c;
	int i;
	
	index = 0;
	size = 0;
	while(line[index] != 0) {
		c = line[index];
		if(!isDelim(c,delims)) {
			size++;
			while(!isDelim(c,delims) && c != 0) {
				index++;
				c = line[index];
			}
		}
		else {
			while(isDelim(c,delims)) {
				index++;
				c = line[index];
			}
		}
	}

	split = (char**) malloc(size*sizeof(char*));

	index = 0;
	for(tokenIndex = 0; tokenIndex < size; tokenIndex++) {
		c = line[index];

		startIndex = index;
		tokenSize = 0;
		while(!isDelim(c,delims) && c != 0) {
			index++;
			c = line[index];
			tokenSize++;
		}

		while(isDelim(c,delims)) {
			index++;
			c = line[index];
		}
		
		split[tokenIndex] = (char*) malloc(tokenSize+1);

		memcpy(split[tokenIndex],line+startIndex,tokenSize);
		split[tokenIndex][tokenSize] = 0;
	}

	*numTokens = size;
	return split;
}

bool isDelim(char c, char* delims) {
  for(int i = 0; i < strlen(delims); i++) {
    if(c == delims[i]) {
      return true; 
    }
  }
  return false;
}

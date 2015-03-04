/*
 * network.h
 *
 *  Created on: Mar 2, 2015
 *      Author: James
 */

#include "simplelink.h"
#include "wlan.h"

#define PREFIX_BUFFER    "GET /welcome.html"
#define POST_BUFFER      " HTTP/1.1\nHost:www.test-the-grobot.appspot.com\nAccept: text/html, application/xhtml+xml, */*\n\n"
//#define HOST_NAME        "www.ti.com"
#define HOST_NAME		 "www.test-the-grobot.appspot.com"

#define HTTP_FILE_NOT_FOUND    "404 Not Found" /* HTTP file not found response */
#define HTTP_STATUS_OK         "200 OK"  /* HTTP status ok response */
#define HTTP_CONTENT_LENGTH    "Content-Length:"  /* HTTP content length header */
#define HTTP_TRANSFER_ENCODING "Transfer-Encoding:" /* HTTP transfer encoding header */
#define HTTP_ENCODING_CHUNKED  "chunked" /* HTTP transfer encoding header value */
#define HTTP_CONNECTION        "Connection:" /* HTTP Connection header */
#define HTTP_CONNECTION_CLOSE  "close"  /* HTTP Connection header value */

#define DNS_RETRY           5 /* No of DNS tries */
#define HTTP_END_OF_HEADER  "\r\n\r\n"  /* string marking the end of headers in response */
#define SIZE_40K            40960  /* Serial flash file size 40 KB */

#define READ_SIZE          1450
#define MAX_BUFF_SIZE      1460

// Temporary file to store the downloaded file
#define TEMP_FILE_NAME "settings_temp.dat"
// File on the serial flash to be replaced
#define FILE_NAME "settings.dat"

#define GROBOT_IP 1249711245;

// Application specific status/error codes
typedef enum{
 /* Choosing this number to avoid overlap with host-driver's error codes */
    DEVICE_NOT_IN_STATION_MODE = -0x7D0,
    DEVICE_START_FAILED = DEVICE_NOT_IN_STATION_MODE - 1,
    INVALID_HEX_STRING = DEVICE_START_FAILED - 1,
    TCP_RECV_ERROR = INVALID_HEX_STRING - 1,
    TCP_SEND_ERROR = TCP_RECV_ERROR - 1,
    FILE_NOT_FOUND_ERROR = TCP_SEND_ERROR - 1,
    INVALID_SERVER_RESPONSE = FILE_NOT_FOUND_ERROR - 1,
    FORMAT_NOT_SUPPORTED = INVALID_SERVER_RESPONSE - 1,
    FILE_OPEN_FAILED = FORMAT_NOT_SUPPORTED - 1,
    FILE_WRITE_ERROR = FILE_OPEN_FAILED - 1,
    INVALID_FILE = FILE_WRITE_ERROR - 1,
    SERVER_CONNECTION_FAILED = INVALID_FILE - 1,
    GET_HOST_IP_FAILED = SERVER_CONNECTION_FAILED  - 1,

    STATUS_CODE_MAX = -0xBB8
}e_AppStatusCodes;

#ifndef NETWORK_H_
#define NETWORK_H_

void SimpleLinkWlanEventHandler(SlWlanEvent_t *pWlanEvent);
void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *pNetAppEvent);
void SimpleLinkHttpServerCallback(SlHttpServerEvent_t *pHttpEvent,
                                  SlHttpServerResponse_t *pHttpResponse);
void SimpleLinkGeneralEventHandler(SlDeviceEvent_t *pDevEvent);
void SimpleLinkSockEventHandler(SlSockEvent_t *pSock);
static void InitializeAppVariables();
static long ConfigureSimpleLinkToDefaultState();
static long WlanConnect();
int CreateConnection(unsigned long DestinationIP);
signed long hexToi(unsigned char *ptr);
int Setup_Connection();

#endif /* NETWORK_H_ */

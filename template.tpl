___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "MoEngage",
  "categories": [
    "ANALYTICS",
    "ATTRIBUTION",
    "SESSION_RECORDING",
    "CONVERSIONS"
  ],
  "brand": {
    "id": "github.com_ayruz-data-marketing",
    "displayName": "Ayruz-data-marketing"
  },
  "description": "This tag enables you to seamlessly send Events to MoEngage",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "apiId",
    "displayName": "API ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "apiKey",
    "displayName": "API Key",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "dataCenter",
    "displayName": "Data Center",
    "selectItems": [
      {
        "value": "https://api-01.moengage.com/v1",
        "displayValue": "DC-01 (US)"
      },
      {
        "value": "https://api-02.moengage.com/v1",
        "displayValue": "DC-02 (EU)"
      },
      {
        "value": "https://api-03.moengage.com/v1",
        "displayValue": "DC-03 (India)"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "RADIO",
    "name": "type",
    "displayName": "Event Type",
    "radioItems": [
      {
        "value": "event",
        "displayValue": "Event"
      },
      {
        "value": "customer",
        "displayValue": "Customer"
      },
      {
        "value": "device",
        "displayValue": "Device"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "eventData",
    "displayName": "Event Data",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "action",
        "displayName": "Event Name",
        "simpleValueType": true
      },
      {
        "type": "SELECT",
        "name": "platform",
        "displayName": "Platform",
        "selectItems": [
          {
            "value": "ANDROID",
            "displayValue": "Android"
          },
          {
            "value": "iOS",
            "displayValue": "iOS"
          },
          {
            "value": "web",
            "displayValue": "Web"
          },
          {
            "value": "unknown",
            "displayValue": "Unknown"
          }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": ""
      },
      {
        "type": "TEXT",
        "name": "appVersion",
        "displayName": "App Version",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "userTime",
        "displayName": "User Time",
        "simpleValueType": true,
        "help": "Numeric(Epoch time in seconds) or String (ISO 8601)"
      },
      {
        "type": "TEXT",
        "name": "userTimezoneOffset",
        "displayName": "User Timezone Offset",
        "simpleValueType": true,
        "help": "Should have a value in seconds which can be between -54000 to 54000. For example, for IST (UTC+0530), user timezone offset will be 19800"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "type",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "platformData",
    "displayName": "Platforms",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "platforms",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "ANDROID",
            "displayName": "Platform",
            "name": "platform",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "ANDROID",
                "displayValue": "Android"
              },
              {
                "value": "iOS",
                "displayValue": "iOS"
              },
              {
                "value": "web",
                "displayValue": "Web"
              }
            ],
            "valueValidators": []
          },
          {
            "defaultValue": true,
            "displayName": "Active",
            "name": "active",
            "type": "SELECT",
            "selectItems": [
              {
                "value": true,
                "displayValue": "True"
              },
              {
                "value": false,
                "displayValue": "False"
              }
            ]
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "type",
        "paramValue": "customer",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "devicePlatform",
    "displayName": "Device Platform",
    "selectItems": [
      {
        "value": "ANDROID",
        "displayValue": "Android"
      },
      {
        "value": "iOS",
        "displayValue": "iOS"
      },
      {
        "value": "web",
        "displayValue": "Web"
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "type",
        "paramValue": "device",
        "type": "EQUALS"
      }
    ],
    "help": "Platform is the type of device required to run push and in-app campaigns. Allowed values are ANDROID, iOS or web."
  },
  {
    "type": "TEXT",
    "name": "pushId",
    "displayName": "Push ID",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "type",
        "paramValue": "device",
        "type": "EQUALS"
      }
    ],
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Push Id or Push Token used to send a push notification to the device."
  },
  {
    "type": "GROUP",
    "name": "UserData",
    "displayName": "Additional User Data",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "attributes",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Name",
            "name": "name",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "overrideData",
    "displayName": "Override Server Event Data",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "customerId",
        "displayName": "Customer ID",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "deviceId",
        "displayName": "Device ID",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "type",
            "paramValue": "customer",
            "type": "NOT_EQUALS"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const getAllEventData = require("getAllEventData");
const JSON = require("JSON");
const sendHttpRequest = require("sendHttpRequest");
const getTimestamp = require("getTimestamp");
const logToConsole = require("logToConsole");
const makeTableMap = require("makeTableMap");
const toBase64 = require("toBase64");
const getCookieValues = require("getCookieValues");
const setCookie = require("setCookie");
const generateRandom = require("generateRandom");
const makeString = require("makeString");
const encodeUri = require("encodeUri");


const eventData = getAllEventData();
let moe_uuid = getCookieValues("moe_uuid")[0];
if (!moe_uuid) moe_uuid = eventData.moe_uuid;

const MAX_CUSTOMER_ID = 1000000000;

const authHeader = "Basic " + toBase64(data.apiId + ":" + data.apiKey);

const postHeaders = {
	"Content-Type": "application/json",
	Authorization: authHeader,
	"MOE-APPKEY": data.apiId,
};

const urlToCall = encodeUri(data.dataCenter) + "/" + encodeUri(data.type) + "/" + encodeUri(data.apiId);

const attributes = makeTableMap(data.attributes, "name", "value");

const postBodyData = getPostBody(data.type);
logToConsole(data);

const postBody = JSON.stringify(postBodyData);

callWidget(urlToCall, 0);

function callWidget(widgetUrl, redirectLvl) {
	if (redirectLvl > 5) {
		logToConsole("Invalid Redirect Loop");
		data.gtmOnFailure();
		return;
	}
	sendHttpRequest(
		widgetUrl,
		(statusCode, headers, body) => {
			if (statusCode >= 200 && statusCode < 300) {
				if (moe_uuid) {
					setCookie("moe_uuid", moe_uuid, {
						domain: "auto",
						path: "/",
						samesite: "Lax",
						secure: true,
						"max-age": 2592000, // 30 days
						httpOnly: false,
					});
				}

				data.gtmOnSuccess();
			} else if (statusCode >= 300 && statusCode < 400) {
				callWidget(headers.location, redirectLvl + 1);
			} else {
				data.gtmOnFailure();
			}
		},
		{ headers: postHeaders, method: "POST", timeout: 3000 },
		postBody
	);
}

function getPostBody(type) {
	switch (type) {
		case "event":
			const cid = getCustomerId();
			return {
				type: "event",
				customer_id: data.customerId || cid,
				device_id: data.deviceId || data.customerId || cid,
				actions: [
					{
						action: data.action || eventData.event_name,
						attributes: attributes,
						platform: data.platform,
						app_version: data.appVersion,
						current_time: getTimestamp(),
						user_time: data.userTime,
						user_timezone_offset: data.userTimezoneOffset
					},
				],
			};

		case "customer":
			const userAttr = attributes;
			userAttr.platform = data.platforms;
			return {
				type: "customer",
				customer_id: data.customerId || getCustomerId(),
				attributes: userAttr
			};

		case "device":
			const deviceAttr = attributes;
			deviceAttr.platform = data.devicePlatform;
			deviceAttr.push_id = data.pushId;
			const custID = getCustomerId();
			return {
				type: "device",
				customer_id: data.customerId || custID,
				device_id: data.deviceId || custID,
				attributes: deviceAttr
			};
	}
}

function getCustomerId() {
	const customerId = makeString(
		getCookieValues("_moengage_id")[0] || generateRandom(0, MAX_CUSTOMER_ID)
	);

	setCookie("_moengage_id", customerId, {
		"max-age": 3600 * 24 * 365 * 2,
		domain: "auto",
		path: "/",
		httpOnly: true,
		secure: true,
	});

	return customerId;
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "moe_uuid"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_moengage_id"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 25/4/2022, 10:58:31 am



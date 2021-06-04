//
//  File.swift
//  AviWeather
//
//  Created by FGT MAC on 6/4/21.
//

import Foundation


let weatherJSON = """
{
  "report": {
    "conditions": {
      "text": "KPWM 030751Z 16003KT 10SM OVC085 15/13 A3011 RMK AO2 SLP194 T01500128",
      "ident": "kpwm",
      "dateIssued": "2021-06-03T07:51:00+0000",
      "lat": 43.64564403491651,
      "lon": -70.30861605624689,
      "elevationFt": 76.0,
      "tempC": 15.0,
      "dewpointC": 13.0,
      "pressureHg": 30.11,
      "densityAltitudeFt": 87,
      "relativeHumidity": 88,
      "flightRules": "vfr",
      "cloudLayers": [
        {
          "coverage": "ovc",
          "altitudeFt": 8500.0,
          "ceiling": true
        }
      ],
      "cloudLayersV2": [
        {
          "coverage": "ovc",
          "altitudeFt": 8500.0,
          "ceiling": true
        }
      ],
      "weather": [],
      "visibility": {
        "distanceSm": 10.0,
        "prevailingVisSm": 10.0
      },
      "wind": {
        "speedKts": 3.0,
        "direction": 160,
        "from": 160,
        "variable": false
      }
    },
    "forecast": {
      "text": "TAF KPWM 030533Z 0306/0406 19003KT P6SM BKN100 FM031700 18008KT P6SM BKN050 OVC100 FM032000 18009G15KT 5SM BR BKN003 OVC015",
      "ident": "kpwm",
      "dateIssued": "2021-06-03T05:33:00+0000",
      "period": {
        "dateStart": "2021-06-03T06:00:00+0000",
        "dateEnd": "2021-06-04T06:00:00+0000"
      },
      "lat": 43.64564403491651,
      "lon": -70.30861605624689,
      "elevationFt": 76.0,
      "conditions": [
        {
          "text": "030533Z 0306/0406 19003KT P6SM BKN100",
          "dateIssued": "2021-06-03T05:33:00+0000",
          "lat": 43.64564403491651,
          "lon": -70.30861605624689,
          "elevationFt": 76.0,
          "relativeHumidity": 100,
          "flightRules": "vfr",
          "cloudLayers": [
            {
              "coverage": "bkn",
              "altitudeFt": 10000.0,
              "ceiling": true
            }
          ],
          "cloudLayersV2": [
            {
              "coverage": "bkn",
              "altitudeFt": 10000.0,
              "ceiling": true
            }
          ],
          "weather": [],
          "visibility": {
            "distanceSm": 6.0,
            "distanceQualifier": 1,
            "prevailingVisSm": 6.0,
            "prevailingVisDistanceQualifier": 1
          },
          "wind": {
            "speedKts": 3.0,
            "direction": 190,
            "from": 190,
            "variable": false
          },
          "period": {
            "dateStart": "2021-06-03T06:00:00+0000",
            "dateEnd": "2021-06-03T17:00:00+0000"
          }
        },
        {
          "text": "FM031700 18008KT P6SM BKN050 OVC100",
          "dateIssued": "2021-06-03T17:00:00+0000",
          "lat": 43.64564403491651,
          "lon": -70.30861605624689,
          "elevationFt": 76.0,
          "relativeHumidity": 100,
          "flightRules": "vfr",
          "cloudLayers": [
            {
              "coverage": "bkn",
              "altitudeFt": 5000.0,
              "ceiling": true
            },
            {
              "coverage": "ovc",
              "altitudeFt": 10000.0,
              "ceiling": true
            }
          ],
          "cloudLayersV2": [
            {
              "coverage": "bkn",
              "altitudeFt": 5000.0,
              "ceiling": true
            },
            {
              "coverage": "ovc",
              "altitudeFt": 10000.0,
              "ceiling": true
            }
          ],
          "weather": [],
          "visibility": {
            "distanceSm": 6.0,
            "distanceQualifier": 1,
            "prevailingVisSm": 6.0,
            "prevailingVisDistanceQualifier": 1
          },
          "wind": {
            "speedKts": 8.0,
            "direction": 180,
            "from": 180,
            "variable": false
          },
          "period": {
            "dateStart": "2021-06-03T17:00:00+0000",
            "dateEnd": "2021-06-03T20:00:00+0000"
          }
        },
        {
          "text": "FM032000 18009G15KT 5SM BR BKN003 OVC015",
          "dateIssued": "2021-06-03T20:00:00+0000",
          "lat": 43.64564403491651,
          "lon": -70.30861605624689,
          "elevationFt": 76.0,
          "relativeHumidity": 100,
          "flightRules": "lifr",
          "cloudLayers": [
            {
              "coverage": "bkn",
              "altitudeFt": 300.0,
              "ceiling": true
            },
            {
              "coverage": "ovc",
              "altitudeFt": 1500.0,
              "ceiling": true
            }
          ],
          "cloudLayersV2": [
            {
              "coverage": "bkn",
              "altitudeFt": 300.0,
              "ceiling": true
            },
            {
              "coverage": "ovc",
              "altitudeFt": 1500.0,
              "ceiling": true
            }
          ],
          "weather": [
            "mist"
          ],
          "visibility": {
            "distanceSm": 5.0,
            "prevailingVisSm": 5.0
          },
          "wind": {
            "speedKts": 9.0,
            "gustSpeedKts": 15.0,
            "direction": 180,
            "from": 180,
            "variable": false
          },
          "period": {
            "dateStart": "2021-06-03T20:00:00+0000",
            "dateEnd": "2021-06-04T06:00:00+0000"
          }
        }
      ]
    },
    "windsAloft": {
      "lat": 43.64564403491651,
      "lon": -70.30861605624689,
      "dateIssued": "2021-06-03T07:00:00+0000",
      "windsAloft": [
        {
          "validTime": "2021-06-03T07:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T06:30:00+0000",
            "dateEnd": "2021-06-03T07:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 219,
              "knots": 11,
              "celsius": 17,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 230,
              "knots": 20,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 215,
              "knots": 19,
              "celsius": 7,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 226,
              "knots": 24,
              "celsius": 1,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 244,
              "knots": 28,
              "celsius": -4,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 248,
              "knots": 26,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 254,
              "knots": 31,
              "celsius": -14,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 260,
              "knots": 35,
              "celsius": -20,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 261,
              "knots": 45,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 261,
              "knots": 45,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 256,
              "knots": 57,
              "celsius": -39,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 263,
              "knots": 66,
              "celsius": -46,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 265,
              "knots": 78,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 266,
              "knots": 86,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 263,
              "knots": 74,
              "celsius": -63,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 260,
              "knots": 62,
              "celsius": -64,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 263,
              "knots": 46,
              "celsius": -62,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 268,
              "knots": 35,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 273,
              "knots": 25,
              "celsius": -58,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T08:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T07:30:00+0000",
            "dateEnd": "2021-06-03T08:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 213,
              "knots": 10,
              "celsius": 17,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 223,
              "knots": 21,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 227,
              "knots": 23,
              "celsius": 7,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 236,
              "knots": 25,
              "celsius": 1,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 243,
              "knots": 27,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 248,
              "knots": 27,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 252,
              "knots": 29,
              "celsius": -14,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 260,
              "knots": 32,
              "celsius": -19,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 260,
              "knots": 44,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 261,
              "knots": 46,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 255,
              "knots": 57,
              "celsius": -39,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 260,
              "knots": 65,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 262,
              "knots": 76,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 263,
              "knots": 83,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 262,
              "knots": 73,
              "celsius": -63,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 259,
              "knots": 61,
              "celsius": -63,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 263,
              "knots": 46,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 266,
              "knots": 34,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 271,
              "knots": 25,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T09:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T08:30:00+0000",
            "dateEnd": "2021-06-03T09:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 203,
              "knots": 9,
              "celsius": 16,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 218,
              "knots": 24,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 236,
              "knots": 27,
              "celsius": 7,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 244,
              "knots": 29,
              "celsius": 1,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 243,
              "knots": 29,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 250,
              "knots": 29,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 252,
              "knots": 28,
              "celsius": -13,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 260,
              "knots": 30,
              "celsius": -19,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 259,
              "knots": 43,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 260,
              "knots": 47,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 254,
              "knots": 55,
              "celsius": -39,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 258,
              "knots": 65,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 261,
              "knots": 74,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 263,
              "knots": 82,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 260,
              "knots": 71,
              "celsius": -63,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 259,
              "knots": 61,
              "celsius": -63,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 262,
              "knots": 46,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 264,
              "knots": 34,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 270,
              "knots": 24,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T10:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T09:30:00+0000",
            "dateEnd": "2021-06-03T10:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 203,
              "knots": 9,
              "celsius": 16,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 217,
              "knots": 22,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 234,
              "knots": 24,
              "celsius": 7,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 241,
              "knots": 29,
              "celsius": 1,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 241,
              "knots": 29,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 243,
              "knots": 27,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 248,
              "knots": 26,
              "celsius": -13,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 257,
              "knots": 31,
              "celsius": -19,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 261,
              "knots": 41,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 259,
              "knots": 47,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 254,
              "knots": 58,
              "celsius": -39,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 256,
              "knots": 66,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 259,
              "knots": 73,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 261,
              "knots": 76,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 259,
              "knots": 69,
              "celsius": -63,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 260,
              "knots": 60,
              "celsius": -63,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 262,
              "knots": 46,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 265,
              "knots": 35,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 268,
              "knots": 25,
              "celsius": -58,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T11:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T10:30:00+0000",
            "dateEnd": "2021-06-03T11:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 204,
              "knots": 10,
              "celsius": 16,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 217,
              "knots": 20,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 233,
              "knots": 21,
              "celsius": 7,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 237,
              "knots": 27,
              "celsius": 1,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 238,
              "knots": 29,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 237,
              "knots": 26,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 242,
              "knots": 24,
              "celsius": -13,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 252,
              "knots": 31,
              "celsius": -19,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 265,
              "knots": 42,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 258,
              "knots": 49,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 252,
              "knots": 61,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 254,
              "knots": 69,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 257,
              "knots": 71,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 260,
              "knots": 72,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 260,
              "knots": 66,
              "celsius": -63,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 259,
              "knots": 61,
              "celsius": -63,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 262,
              "knots": 46,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 265,
              "knots": 36,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 268,
              "knots": 26,
              "celsius": -58,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T12:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T11:30:00+0000",
            "dateEnd": "2021-06-03T12:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 202,
              "knots": 11,
              "celsius": 16,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 217,
              "knots": 18,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 231,
              "knots": 19,
              "celsius": 7,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 233,
              "knots": 27,
              "celsius": 2,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 236,
              "knots": 29,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 230,
              "knots": 23,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 235,
              "knots": 24,
              "celsius": -13,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 248,
              "knots": 33,
              "celsius": -19,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 267,
              "knots": 42,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 257,
              "knots": 50,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 251,
              "knots": 63,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 252,
              "knots": 69,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 253,
              "knots": 70,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 257,
              "knots": 66,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 259,
              "knots": 64,
              "celsius": -63,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 259,
              "knots": 61,
              "celsius": -63,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 261,
              "knots": 48,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 265,
              "knots": 36,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 267,
              "knots": 27,
              "celsius": -58,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T13:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T12:30:00+0000",
            "dateEnd": "2021-06-03T13:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 196,
              "knots": 12,
              "celsius": 17,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 213,
              "knots": 19,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 220,
              "knots": 20,
              "celsius": 8,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 225,
              "knots": 27,
              "celsius": 2,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 237,
              "knots": 32,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 237,
              "knots": 26,
              "celsius": -8,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 241,
              "knots": 26,
              "celsius": -13,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 248,
              "knots": 37,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 260,
              "knots": 44,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 253,
              "knots": 51,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 249,
              "knots": 63,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 249,
              "knots": 68,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 252,
              "knots": 65,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 256,
              "knots": 62,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 257,
              "knots": 59,
              "celsius": -62,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 259,
              "knots": 56,
              "celsius": -63,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 261,
              "knots": 45,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 263,
              "knots": 36,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 265,
              "knots": 28,
              "celsius": -58,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T14:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T13:30:00+0000",
            "dateEnd": "2021-06-03T14:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 195,
              "knots": 12,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 211,
              "knots": 19,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 209,
              "knots": 23,
              "celsius": 8,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 219,
              "knots": 29,
              "celsius": 2,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 238,
              "knots": 34,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 243,
              "knots": 29,
              "celsius": -7,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 246,
              "knots": 30,
              "celsius": -12,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 250,
              "knots": 39,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 255,
              "knots": 47,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 248,
              "knots": 53,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 246,
              "knots": 65,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 248,
              "knots": 64,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 251,
              "knots": 61,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 253,
              "knots": 59,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 257,
              "knots": 57,
              "celsius": -62,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 262,
              "knots": 54,
              "celsius": -62,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 261,
              "knots": 44,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 262,
              "knots": 35,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 264,
              "knots": 29,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T15:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T14:30:00+0000",
            "dateEnd": "2021-06-03T15:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 190,
              "knots": 13,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 206,
              "knots": 20,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 202,
              "knots": 24,
              "celsius": 8,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 212,
              "knots": 30,
              "celsius": 2,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 238,
              "knots": 35,
              "celsius": -3,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 247,
              "knots": 32,
              "celsius": -7,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 250,
              "knots": 34,
              "celsius": -11,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 250,
              "knots": 43,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 250,
              "knots": 50,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 244,
              "knots": 56,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 244,
              "knots": 66,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 248,
              "knots": 63,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 249,
              "knots": 58,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 249,
              "knots": 54,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 256,
              "knots": 52,
              "celsius": -62,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 263,
              "knots": 50,
              "celsius": -62,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 263,
              "knots": 42,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 261,
              "knots": 35,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 262,
              "knots": 29,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T16:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T15:30:00+0000",
            "dateEnd": "2021-06-03T16:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 189,
              "knots": 15,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 208,
              "knots": 19,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 210,
              "knots": 24,
              "celsius": 8,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 219,
              "knots": 28,
              "celsius": 2,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 239,
              "knots": 32,
              "celsius": -2,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 246,
              "knots": 34,
              "celsius": -7,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 248,
              "knots": 35,
              "celsius": -11,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 249,
              "knots": 45,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 251,
              "knots": 50,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 248,
              "knots": 56,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 247,
              "knots": 64,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 249,
              "knots": 62,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 250,
              "knots": 60,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 250,
              "knots": 59,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 257,
              "knots": 55,
              "celsius": -62,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 262,
              "knots": 51,
              "celsius": -62,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 262,
              "knots": 43,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 263,
              "knots": 36,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 265,
              "knots": 30,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T17:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T16:30:00+0000",
            "dateEnd": "2021-06-03T17:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 187,
              "knots": 16,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 208,
              "knots": 21,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 217,
              "knots": 26,
              "celsius": 9,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 228,
              "knots": 25,
              "celsius": 3,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 242,
              "knots": 29,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 247,
              "knots": 35,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 247,
              "knots": 39,
              "celsius": -11,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 248,
              "knots": 47,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 250,
              "knots": 52,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 253,
              "knots": 58,
              "celsius": -32,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 250,
              "knots": 62,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 250,
              "knots": 60,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 251,
              "knots": 63,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 252,
              "knots": 64,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 256,
              "knots": 59,
              "celsius": -61,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 262,
              "knots": 54,
              "celsius": -61,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 262,
              "knots": 44,
              "celsius": -60,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 266,
              "knots": 37,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 268,
              "knots": 29,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T18:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T17:30:00+0000",
            "dateEnd": "2021-06-03T18:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 186,
              "knots": 18,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 210,
              "knots": 20,
              "celsius": 12,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 225,
              "knots": 26,
              "celsius": 9,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 238,
              "knots": 25,
              "celsius": 3,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 244,
              "knots": 28,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 246,
              "knots": 38,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 248,
              "knots": 43,
              "celsius": -11,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 247,
              "knots": 49,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 251,
              "knots": 53,
              "celsius": -24,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 258,
              "knots": 60,
              "celsius": -31,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 253,
              "knots": 59,
              "celsius": -40,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 253,
              "knots": 60,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 253,
              "knots": 65,
              "celsius": -56,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 253,
              "knots": 70,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 257,
              "knots": 61,
              "celsius": -61,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 261,
              "knots": 55,
              "celsius": -61,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 264,
              "knots": 45,
              "celsius": -60,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 266,
              "knots": 37,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 270,
              "knots": 29,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T19:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T18:30:00+0000",
            "dateEnd": "2021-06-03T20:00:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 186,
              "knots": 17,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 211,
              "knots": 21,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 227,
              "knots": 25,
              "celsius": 9,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 240,
              "knots": 25,
              "celsius": 3,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 246,
              "knots": 28,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 246,
              "knots": 38,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 246,
              "knots": 43,
              "celsius": -11,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 247,
              "knots": 48,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 250,
              "knots": 55,
              "celsius": -24,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 258,
              "knots": 60,
              "celsius": -31,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 254,
              "knots": 65,
              "celsius": -39,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 258,
              "knots": 65,
              "celsius": -48,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 259,
              "knots": 69,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 260,
              "knots": 72,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 260,
              "knots": 63,
              "celsius": -61,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 262,
              "knots": 55,
              "celsius": -60,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 264,
              "knots": 45,
              "celsius": -60,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 267,
              "knots": 36,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 270,
              "knots": 29,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-03T21:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T20:00:00+0000",
            "dateEnd": "2021-06-03T22:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 186,
              "knots": 17,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 218,
              "knots": 21,
              "celsius": 13,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 229,
              "knots": 24,
              "celsius": 10,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 243,
              "knots": 27,
              "celsius": 5,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 249,
              "knots": 33,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 245,
              "knots": 38,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 243,
              "knots": 42,
              "celsius": -12,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 249,
              "knots": 47,
              "celsius": -17,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 250,
              "knots": 58,
              "celsius": -23,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 257,
              "knots": 61,
              "celsius": -31,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 258,
              "knots": 77,
              "celsius": -38,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 264,
              "knots": 78,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 270,
              "knots": 81,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 272,
              "knots": 81,
              "celsius": -61,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 267,
              "knots": 68,
              "celsius": -60,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 262,
              "knots": 55,
              "celsius": -60,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 264,
              "knots": 45,
              "celsius": -60,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 269,
              "knots": 35,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 273,
              "knots": 28,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-04T00:00:00+0000",
          "period": {
            "dateStart": "2021-06-03T22:30:00+0000",
            "dateEnd": "2021-06-04T01:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 195,
              "knots": 12,
              "celsius": 15,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 228,
              "knots": 24,
              "celsius": 15,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 237,
              "knots": 26,
              "celsius": 11,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 242,
              "knots": 27,
              "celsius": 4,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 242,
              "knots": 36,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 247,
              "knots": 41,
              "celsius": -5,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 247,
              "knots": 49,
              "celsius": -11,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 247,
              "knots": 53,
              "celsius": -17,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 250,
              "knots": 60,
              "celsius": -23,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 251,
              "knots": 67,
              "celsius": -31,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 254,
              "knots": 70,
              "celsius": -38,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 260,
              "knots": 82,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 261,
              "knots": 80,
              "celsius": -54,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 261,
              "knots": 74,
              "celsius": -60,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 262,
              "knots": 65,
              "celsius": -60,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 263,
              "knots": 55,
              "celsius": -60,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 265,
              "knots": 43,
              "celsius": -60,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 267,
              "knots": 32,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 270,
              "knots": 23,
              "celsius": -58,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-04T03:00:00+0000",
          "period": {
            "dateStart": "2021-06-04T01:30:00+0000",
            "dateEnd": "2021-06-04T04:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 190,
              "knots": 8,
              "celsius": 16,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 257,
              "knots": 23,
              "celsius": 15,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 248,
              "knots": 25,
              "celsius": 10,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 247,
              "knots": 29,
              "celsius": 4,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 236,
              "knots": 32,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 238,
              "knots": 36,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 243,
              "knots": 43,
              "celsius": -10,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 247,
              "knots": 53,
              "celsius": -16,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 248,
              "knots": 54,
              "celsius": -23,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 249,
              "knots": 63,
              "celsius": -30,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 250,
              "knots": 69,
              "celsius": -38,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 252,
              "knots": 76,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 251,
              "knots": 83,
              "celsius": -55,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 250,
              "knots": 87,
              "celsius": -62,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 253,
              "knots": 75,
              "celsius": -62,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 257,
              "knots": 64,
              "celsius": -61,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 260,
              "knots": 47,
              "celsius": -60,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 264,
              "knots": 33,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 271,
              "knots": 22,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-04T06:00:00+0000",
          "period": {
            "dateStart": "2021-06-04T04:30:00+0000",
            "dateEnd": "2021-06-04T07:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 206,
              "knots": 7,
              "celsius": 17,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 258,
              "knots": 25,
              "celsius": 15,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 259,
              "knots": 26,
              "celsius": 9,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 250,
              "knots": 25,
              "celsius": 3,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 240,
              "knots": 30,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 238,
              "knots": 35,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 232,
              "knots": 43,
              "celsius": -10,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 241,
              "knots": 53,
              "celsius": -16,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 243,
              "knots": 57,
              "celsius": -23,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 248,
              "knots": 68,
              "celsius": -31,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 246,
              "knots": 78,
              "celsius": -38,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 242,
              "knots": 89,
              "celsius": -46,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 241,
              "knots": 97,
              "celsius": -53,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 242,
              "knots": 100,
              "celsius": -60,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 250,
              "knots": 78,
              "celsius": -61,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 263,
              "knots": 61,
              "celsius": -62,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 261,
              "knots": 49,
              "celsius": -61,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 260,
              "knots": 36,
              "celsius": -60,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 260,
              "knots": 27,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-04T09:00:00+0000",
          "period": {
            "dateStart": "2021-06-04T07:30:00+0000",
            "dateEnd": "2021-06-04T10:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 209,
              "knots": 8,
              "celsius": 17,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 248,
              "knots": 18,
              "celsius": 15,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 254,
              "knots": 21,
              "celsius": 10,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 266,
              "knots": 25,
              "celsius": 4,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 283,
              "knots": 33,
              "celsius": -2,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 253,
              "knots": 36,
              "celsius": -6,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 240,
              "knots": 41,
              "celsius": -12,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 244,
              "knots": 54,
              "celsius": -18,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 244,
              "knots": 71,
              "celsius": -24,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 244,
              "knots": 78,
              "celsius": -30,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 243,
              "knots": 81,
              "celsius": -38,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 229,
              "knots": 79,
              "celsius": -46,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 229,
              "knots": 86,
              "celsius": -54,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 236,
              "knots": 96,
              "celsius": -61,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 247,
              "knots": 72,
              "celsius": -60,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 262,
              "knots": 55,
              "celsius": -59,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 264,
              "knots": 45,
              "celsius": -59,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 266,
              "knots": 37,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 269,
              "knots": 30,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        },
        {
          "validTime": "2021-06-04T12:00:00+0000",
          "period": {
            "dateStart": "2021-06-04T10:30:00+0000",
            "dateEnd": "2021-06-04T13:30:00+0000"
          },
          "windTemps": {
            "0": {
              "directionFromTrue": 255,
              "knots": 7,
              "celsius": 18,
              "altitude": 0,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "3000": {
              "directionFromTrue": 268,
              "knots": 21,
              "celsius": 14,
              "altitude": 3000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "6000": {
              "directionFromTrue": 259,
              "knots": 21,
              "celsius": 9,
              "altitude": 6000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "9000": {
              "directionFromTrue": 259,
              "knots": 26,
              "celsius": 4,
              "altitude": 9000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "12000": {
              "directionFromTrue": 260,
              "knots": 31,
              "celsius": -1,
              "altitude": 12000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "15000": {
              "directionFromTrue": 256,
              "knots": 40,
              "celsius": -7,
              "altitude": 15000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "18000": {
              "directionFromTrue": 252,
              "knots": 45,
              "celsius": -13,
              "altitude": 18000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "21000": {
              "directionFromTrue": 254,
              "knots": 53,
              "celsius": -19,
              "altitude": 21000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "24000": {
              "directionFromTrue": 247,
              "knots": 67,
              "celsius": -25,
              "altitude": 24000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "27000": {
              "directionFromTrue": 247,
              "knots": 77,
              "celsius": -31,
              "altitude": 27000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "30000": {
              "directionFromTrue": 246,
              "knots": 89,
              "celsius": -38,
              "altitude": 30000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "33000": {
              "directionFromTrue": 242,
              "knots": 91,
              "celsius": -47,
              "altitude": 33000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "36000": {
              "directionFromTrue": 234,
              "knots": 94,
              "celsius": -54,
              "altitude": 36000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "39000": {
              "directionFromTrue": 228,
              "knots": 94,
              "celsius": -61,
              "altitude": 39000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "42000": {
              "directionFromTrue": 239,
              "knots": 68,
              "celsius": -60,
              "altitude": 42000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "45000": {
              "directionFromTrue": 254,
              "knots": 48,
              "celsius": -59,
              "altitude": 45000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "48000": {
              "directionFromTrue": 257,
              "knots": 39,
              "celsius": -59,
              "altitude": 48000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "51000": {
              "directionFromTrue": 261,
              "knots": 32,
              "celsius": -59,
              "altitude": 51000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            },
            "54000": {
              "directionFromTrue": 263,
              "knots": 27,
              "celsius": -59,
              "altitude": 54000,
              "isLightAndVariable": false,
              "isGreaterThan199Knots": false,
              "turbulence": false,
              "icing": false
            }
          }
        }
      ],
      "source": "Model"
    },
    "mos": {
      "station": "KPWM",
      "issued": "2021-06-03T07:07:00+0000",
      "period": {
        "dateStart": "2021-06-03T07:00:00+0000",
        "dateEnd": "2021-06-04T07:00:00+0000"
      },
      "latitude": 43.64564403491651,
      "longitude": -70.30861605624689,
      "forecast": {
        "text": "",
        "ident": "KPWM",
        "dateIssued": "2021-06-03T07:07:00+0000",
        "period": {
          "dateStart": "2021-06-03T07:00:00+0000",
          "dateEnd": "2021-06-04T07:00:00+0000"
        },
        "lat": 43.64564403491651,
        "lon": -70.30861605624689,
        "elevationFt": 76.0,
        "conditions": [
          {
            "text": "",
            "tempMinC": 15.0,
            "tempMaxC": 17.22222222222222,
            "dewpointMinC": 12.777777777777779,
            "dewpointMaxC": 12.777777777777779,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 9000.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 9000.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 5.0,
              "gustSpeedKts": 9.0,
              "direction": 200,
              "from": 200,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-03T07:00:00+0000",
              "dateEnd": "2021-06-03T13:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 18.333333333333332,
            "tempMaxC": 19.444444444444443,
            "dewpointMinC": 12.777777777777779,
            "dewpointMaxC": 13.333333333333334,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 10.0,
              "gustSpeedKts": 13.0,
              "direction": 180,
              "from": 180,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-03T13:00:00+0000",
              "dateEnd": "2021-06-03T17:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 19.444444444444443,
            "tempMaxC": 19.444444444444443,
            "dewpointMinC": 13.333333333333334,
            "dewpointMaxC": 13.333333333333334,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 4000.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 4000.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 11.0,
              "gustSpeedKts": 15.0,
              "direction": 180,
              "from": 180,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-03T17:00:00+0000",
              "dateEnd": "2021-06-03T18:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 18.88888888888889,
            "tempMaxC": 18.88888888888889,
            "dewpointMinC": 13.88888888888889,
            "dewpointMaxC": 13.88888888888889,
            "flightRules": "mvfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 1500.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 1500.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 12.0,
              "gustSpeedKts": 15.0,
              "direction": 180,
              "from": 180,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-03T18:00:00+0000",
              "dateEnd": "2021-06-03T19:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 18.88888888888889,
            "tempMaxC": 18.88888888888889,
            "dewpointMinC": 13.88888888888889,
            "dewpointMaxC": 13.88888888888889,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 11.0,
              "gustSpeedKts": 17.0,
              "direction": 180,
              "from": 180,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-03T19:00:00+0000",
              "dateEnd": "2021-06-03T20:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 16.666666666666668,
            "tempMaxC": 18.88888888888889,
            "dewpointMinC": 13.88888888888889,
            "dewpointMaxC": 15.0,
            "flightRules": "lifr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 2.0,
              "distanceQualifier": 0
            },
            "wind": {
              "speedKts": 9.0,
              "gustSpeedKts": 14.0,
              "direction": 190,
              "from": 190,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-03T20:00:00+0000",
              "dateEnd": "2021-06-04T04:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 16.666666666666668,
            "tempMaxC": 16.666666666666668,
            "dewpointMinC": 15.555555555555555,
            "dewpointMaxC": 16.11111111111111,
            "flightRules": "lifr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 0.75,
              "distanceQualifier": 0
            },
            "wind": {
              "speedKts": 6.0,
              "gustSpeedKts": 11.0,
              "direction": 210,
              "from": 210,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T04:00:00+0000",
              "dateEnd": "2021-06-04T08:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 16.666666666666668,
            "tempMaxC": 16.666666666666668,
            "dewpointMinC": 16.11111111111111,
            "dewpointMaxC": 16.11111111111111,
            "flightRules": "lifr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [
              "rain"
            ],
            "visibility": {
              "distanceSm": 0.75,
              "distanceQualifier": 0
            },
            "wind": {
              "speedKts": 6.0,
              "gustSpeedKts": 10.0,
              "direction": 220,
              "from": 220,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T08:00:00+0000",
              "dateEnd": "2021-06-04T09:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 18.88888888888889,
            "tempMaxC": 18.88888888888889,
            "dewpointMinC": 16.666666666666668,
            "dewpointMaxC": 16.666666666666668,
            "flightRules": "lifr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 300.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 1.5,
              "distanceQualifier": 0
            },
            "wind": {
              "speedKts": 6.0,
              "gustSpeedKts": 12.0,
              "direction": 240,
              "from": 240,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T09:00:00+0000",
              "dateEnd": "2021-06-04T12:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 22.77777777777778,
            "tempMaxC": 22.77777777777778,
            "dewpointMinC": 16.666666666666668,
            "dewpointMaxC": 16.666666666666668,
            "flightRules": "mvfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 1500.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 1500.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 8.0,
              "gustSpeedKts": 12.0,
              "direction": 240,
              "from": 240,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T12:00:00+0000",
              "dateEnd": "2021-06-04T15:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 23.333333333333332,
            "tempMaxC": 23.333333333333332,
            "dewpointMinC": 16.11111111111111,
            "dewpointMaxC": 16.11111111111111,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 4000.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 4000.0,
                "ceiling": true,
                "altitudeQualifier": 0
              }
            ],
            "weather": [
              "rain"
            ],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 10.0,
              "gustSpeedKts": 13.0,
              "direction": 210,
              "from": 210,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T15:00:00+0000",
              "dateEnd": "2021-06-04T18:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 22.22222222222222,
            "tempMaxC": 22.22222222222222,
            "dewpointMinC": 15.555555555555555,
            "dewpointMaxC": 15.555555555555555,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "weather": [
              "rain"
            ],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 9.0,
              "gustSpeedKts": 12.0,
              "direction": 200,
              "from": 200,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T18:00:00+0000",
              "dateEnd": "2021-06-04T21:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 17.77777777777778,
            "tempMaxC": 20.0,
            "dewpointMinC": 15.0,
            "dewpointMaxC": 15.555555555555555,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "bkn",
                "altitudeFt": 12000.0,
                "ceiling": true,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 6.0,
              "gustSpeedKts": 10.0,
              "direction": 210,
              "from": 210,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-04T21:00:00+0000",
              "dateEnd": "2021-06-05T03:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 16.11111111111111,
            "tempMaxC": 16.11111111111111,
            "dewpointMinC": 15.0,
            "dewpointMaxC": 15.0,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 3.0,
              "gustSpeedKts": 6.0,
              "direction": 230,
              "from": 230,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-05T03:00:00+0000",
              "dateEnd": "2021-06-05T06:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 15.555555555555555,
            "tempMaxC": 15.555555555555555,
            "dewpointMinC": 14.444444444444445,
            "dewpointMaxC": 14.444444444444445,
            "flightRules": "mvfr",
            "cloudLayers": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 4.0,
              "distanceQualifier": 0
            },
            "wind": {
              "speedKts": 0.0,
              "gustSpeedKts": 5.0,
              "direction": 0,
              "from": 0,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-05T06:00:00+0000",
              "dateEnd": "2021-06-05T09:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 18.88888888888889,
            "tempMaxC": 18.88888888888889,
            "dewpointMinC": 15.555555555555555,
            "dewpointMaxC": 15.555555555555555,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 3.0,
              "gustSpeedKts": 7.0,
              "direction": 230,
              "from": 230,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-05T09:00:00+0000",
              "dateEnd": "2021-06-05T12:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 23.88888888888889,
            "tempMaxC": 25.555555555555557,
            "dewpointMinC": 15.0,
            "dewpointMaxC": 15.555555555555555,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 11.0,
              "gustSpeedKts": 15.0,
              "direction": 210,
              "from": 210,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-05T12:00:00+0000",
              "dateEnd": "2021-06-05T21:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 20.555555555555557,
            "tempMaxC": 21.666666666666668,
            "dewpointMinC": 15.0,
            "dewpointMaxC": 15.0,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 9.0,
              "gustSpeedKts": 11.0,
              "direction": 230,
              "from": 230,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-05T21:00:00+0000",
              "dateEnd": "2021-06-06T03:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          },
          {
            "text": "",
            "tempMinC": 20.0,
            "tempMaxC": 20.0,
            "dewpointMinC": 15.555555555555555,
            "dewpointMaxC": 15.555555555555555,
            "flightRules": "vfr",
            "cloudLayers": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "cloudLayersV2": [
              {
                "coverage": "sct",
                "altitudeFt": 12000.0,
                "ceiling": false,
                "altitudeQualifier": 1
              }
            ],
            "weather": [],
            "visibility": {
              "distanceSm": 6.0,
              "distanceQualifier": 1
            },
            "wind": {
              "speedKts": 6.0,
              "gustSpeedKts": 10.0,
              "direction": 240,
              "from": 240,
              "variable": false
            },
            "period": {
              "dateStart": "2021-06-06T03:00:00+0000",
              "dateEnd": "2021-06-06T06:00:00+0000"
            },
            "turbulence": [],
            "icing": []
          }
        ]
      }
    }
  }
}

""".data(using: .utf8)

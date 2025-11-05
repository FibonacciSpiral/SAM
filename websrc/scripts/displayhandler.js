function updateDisplay(pageID) {
    const url = '/settings.json';
    // Call 'fetch()', passing in the URL.
    fetch(url)
    // fetch() returns a promise. When we have received a response from the server,
    // the promise's 'then()' handler is called with the response.
    .then((response) => {
        // Our handler throws an error if the request did not succeed.
        if (!response.ok) {
        throw new Error('HTTP error: ${response.status}');
        }
        // Otherwise (if the response succeeded), our handler fetches the response
        // as text by calling response.text(), and immediately returns the promise
        // returned by 'response.text()'.
        return response.json();
    })
    // When response.text() has succeeded, the 'then()' handler is called with
    // the text, and we copy the settings into their respective fields
    .then((json) => {
        if (pageID=='home') {
            initializeHome(json);
        } else if (pageID=='network') {
            initializeNetPage(json);
        }
    }
    )
    // Catch any errors that might happen, and display a message
    .catch((error) => console.error = 'Could not fetch verse: ${error}');
}

function fetchMacAddress() {
    const url = '/mac.json';
    // Call 'fetch()', passing in the URL.
    fetch(url)
    // fetch() returns a promise. When we have received a response from the server,
    // the promise's 'then()' handler is called with the response.
    .then((response) => {
        // Our handler throws an error if the request did not succeed.
        if (!response.ok) {
        throw new Error('HTTP error: ${response.status}');
        }
        // Otherwise (if the response succeeded), our handler fetches the response
        // as text by calling response.text(), and immediately returns the promise
        // returned by 'response.text()'.
        return response.json();
    })
    // When response.text() has succeeded, the 'then()' handler is called with
    // the text, and we copy the settings into their respective fields
    .then((json) => {document.getElementById("mac_addr").innerHTML = json["mac_addr"];})
    // Catch any errors that might happen, and display a message
    .catch((error) => console.error = 'Could not fetch verse: ${error}');
}

function initializeHome(json) { //need to make separate initializer for each page
    fetchMacAddress();
    document.getElementById("ip_addr").innerHTML = json["ip_addr"];
}

function initializeNetPage(json) {
    if(json["rbDHCP"] == "enable")
    {
        document.getElementById("enableDHCP").checked = true;
    }
    else
    {
        document.getElementById("disableDHCP").checked = true;
    }
    setDhcpState();
    document.getElementById("ip_addr_input").value = json["ip_addr"];
    document.getElementById("subnet_mask").value = json["submask"];
    document.getElementById("default_gw").value = json["gw_addr"];
    document.getElementById("primary_dns").value = json["pdns_addr"];
}


function convertToF(celsius) {
    // make the given fahrenheit variable equal the given celsius value
    // multiply the given celsius value by 9/5 then add 32
    let fahrenheit = celsius * 9/5 + 32
    // return the variable fahrenheit as the answer
    return Math.round(fahrenheit);
}

function convertToC(fahrenheit) {
    // make the given fahrenheit variable equal the given celsius value
    // multiply the given celsius value by 9/5 then add 32
    let celsius = (fahrenheit - 32) * (5/9)
    // return the variable fahrenheit as the answer
    return Math.round(celsius);
}

let current_temp_system = 0; //globals
let current_setpoint = 0;

function initializeSetpoint(pageID) {
    const url = '/setpoint.txt';
    fetch(url)
    // fetch() returns a promise. When we have received a response from the server,
    // the promise's `then()` handler is called with the response.
    .then((response) => {
    // Our handler throws an error if the request did not succeed.
    if (!response.ok) {
      throw new Error(`HTTP error: ${response.status}`);
    }
    // Otherwise (if the response succeeded), our handler fetches the response
    // as text by calling response.text(), and immediately returns the promise
    // returned by `response.text()`.
    return response.text();

  })
  .then((text) => {
    current_setpoint = Number(text);
    let temp_to_display = current_setpoint;
        if (pageID=='setpoint_config') {
            if(current_temp_system == "C") {
                document.getElementById("celsius").checked = true;
                temp_to_display = convertToC(temp_to_display);
            }
            else {
                document.getElementById("fahrenheit").checked = true;
            }
            
        }
        else {
            if(current_temp_system == "C") {
                temp_to_display = convertToC(temp_to_display);
            }
        }
        document.getElementById("current_setpoint").innerHTML = temp_to_display + "&#176;" + current_temp_system;
  }
  )
  .catch((error) => {});
}

function initializeTempSystem(pageID) {
    const url = '/temperatureSystem.txt';
    fetch(url)

    .then((response) => {
    if (!response.ok) {
        throw new Error(`HTTP error: ${response.status}`);
    }
    // Otherwise (if the response succeeded), our handler fetches the response
    // as text by calling response.text(), and immediately returns the promise
    // returned by `response.text()`.
    return response.text();

    })
    .then((text) => {
        current_temp_system = text[0];
        if(pageID == 'home')
        {
            initializeSetpoint();
            initializeCurrentTemp();
            setInterval(initializeCurrentTemp, 2000); //updates temperature every 2 seconds
            document.getElementById("current_setpoint").innerHTML = current_setpoint + "&#176;" + current_temp_system;
        } else {
            initializeSetpoint('setpoint_config');
        }
    })
    .catch((error) => {});
}

function initializeCurrentTemp() {
    const url = '?CURRENT_TEMP';
    fetch(url)
    // fetch() returns a promise. When we have received a response from the server,
    // the promise's `then()` handler is called with the response.
    .then((response) => {
    // Our handler throws an error if the request did not succeed.
    if (!response.ok) {
      throw new Error(`HTTP error: ${response.status}`);
    }
    // Otherwise (if the response succeeded), our handler fetches the response
    // as text by calling response.text(), and immediately returns the promise
    // returned by `response.text()`.
    return response.text();

  })
  .then((text) => {
    current_temperature = Number(text);
    document.getElementById("current_temp").innerHTML = current_temperature + "&#176;" + current_temp_system;

  }
  )
  .catch((error) => {});
}
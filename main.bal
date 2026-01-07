import ballerina/http;

listener http:Listener httpListener = check new (9090);

service /greet on httpListener {

    // Greet with a default message
    resource function get .() returns string {
        return "Hello, Welcome to the Greeter Service!";
    }

    // Greet a specific person by name
    resource function get [string name]() returns string {
        return string `Hello, ${name}! Welcome to the Greeter Service!`;
    }
}

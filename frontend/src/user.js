class User {
  constructor(userObj) {
    this.firstName = userObj.first_name;
    this.lastName = userObj.last_name;
    this.address = userObj.address;
    this.city = userObj.city;
    this.state = userObj.state;
    this.zip  = userObj.zip;
    this.email  = userObj.email;
    this.birthdate  = userObj.birthdate;
    this.aliases  = userObj.aliases
  }
}
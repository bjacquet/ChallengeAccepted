var Year = function (input) {
    this.value = input;
};

Year.prototype.isLeap = function () {
    return this.value % 4 == 0 &&
        ( !(this.value % 100 == 0) ||
          this.value % 400 == 0 );
};

module.exports = Year;

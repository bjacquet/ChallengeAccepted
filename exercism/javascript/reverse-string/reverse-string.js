
const ReverseString = function (string) {
    if (string.length > 0)
        return string[string.length-1] + ReverseString(string.slice(0,-1));
    else
        return string;
};

module.exports = ReverseString;

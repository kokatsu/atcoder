import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = "Sunny";
    if (S == "Sunny") res = "Cloudy";
    if (S == "Cloudy") res = "Rainy";

    res.writeln;
}
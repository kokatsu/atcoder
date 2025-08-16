import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = "Unknown";
    if (S == "red") {
        res = "SSS";
    }
    if (S == "blue") {
        res = "FFF";
    }
    if (S == "green") {
        res = "MMM";
    }

    res.writeln;
}
